import * as types from './../constants/actionTypes';
import callApi from './../utils/apiCaller';
import callApiBackEnd from './../utils/apiCallBackend';
// import Http from './../../Http';

export const addRenterRequest =  (renter) =>{
    return(dispatch) =>{
        return callApiBackEnd('api/all-renters/store','POST',{
            name: renter.name,
            email:renter.email,
            password:renter.password
        }).then(res=>{
            console.log(res)
            dispatch(addRenter(renter))
        })
    }
}
export const addRenter = (renter) =>{
    return {
        type:types.ADD_RENTER,
        renter
    }
}
export const loginRequest =  (user) =>{
    // return(dispatch) =>{
        return callApiBackEnd('api/auth/login','POST',{
            email:user.email,
            password:user.password
        }).then(res=>{
            if(res){
                // console.log(res.data)
                localStorage.setItem('auth_token',res.data.access_token)
                // Http.defaults.headers.common['Authorization'] = 'Bearer ' + res.data.access_token;
            }
            console.log(res)
            // dispatch(login(user))
        })
    // }
}
export const registerRequest =  (user) =>{
    // return(dispatch) =>{
        return callApiBackEnd('api/auth/register','POST',{
            name:user.name,
            email:user.email,
            password:user.password,
            password_confirmation:user.password_confirmation
        }).then(res=>{
            if(res){
                if(res.status == 201){
                    localStorage.setItem('register','ok');
                }
            }
            console.log(res)
            // dispatch(login(user))
        })
    // }
}
