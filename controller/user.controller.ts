import { Request, Response } from "express";
import User from "../models/user";

export const getUsers = async (req:Request, res:Response) =>{

    const users = await User.findAll({
        where:{
            estado: true,
        }
    });
    res.json(users);

}

export const getUser = async (req:Request, res:Response) =>{

    const {id} = req.params;
    const user = await User.findByPk(id);

    if (user) {
        res.json(user);
    }else{
        res.status(404).json({
            msg: `there is no user with id: ${id}`
        });
    }


}

export const postUser = async (req:Request, res:Response) =>{

    const {nameuser, email} = req.body
    const data = {
        nameuser,
        email,
    }

    try { 
        
        const existsEmail = await User.findOne({
            where:{
                email: data.email
            }
        });
        if (existsEmail) {
            return res.status(400).json({
                mgs: `there is already a user with the email: ${data.email}`
            }); 
        }
        
        const user = await User.create(data);
        await user.save();

        res.json(user)

    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'talk to the admin'
        });
    }
}

export const putUser = async (req:Request, res:Response) =>{

    const {id} = req.params;
    const {nameuser, email} = req.body;
    const data = {
        nameuser,
        email
    }
    
    try { 
        
        const user  = await User.findByPk(id);
        if (!user) {
            return res.status(404).json({
                msg: `there is not user with id: ${id}`
            });
        }

        const existsEmail = await User.findOne({
            where:{
                email: data.email
            }
        });
        if (existsEmail) {
            return res.status(400).json({
                mgs: `there is already a user with the email: ${data.email}`
            }); 
        }

        await user.update(data);
        res.json(user);

    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'talk to the admin'
        });
    }

}

export const deleteUser = async(req:Request, res:Response) =>{
    
    const {id} = req.params;
    
    try {

        const user  = await User.findByPk(id);
        if (!user) {
            return res.status(404).json({
                msg: `there is not user with id: ${id}`
            });
        }

        //logical delete
        await user.update({estado: false});

        //delete in db
        //await user.destroy();

        res.json(user);

    } catch (error) {
        console.log(error);
        res.status(500).json({
            msg: 'talk to the admin'
        });
    }

}

