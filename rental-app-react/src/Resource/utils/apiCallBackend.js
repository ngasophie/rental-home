import axios from 'axios';
import * as Config from './../constants/Config';
export default function callApiBackEnd(endpoint, method = 'GET', body){
    let headers='';
    if(localStorage.getItem('access_token')){
        headers=localStorage.getItem('access_token');
    }
    return axios({
        method: method,
        url: `${Config.API_BACKEND}/${endpoint}`,
        data: body,
        headers:headers
    }).catch(err =>{
        console.log(err)
    })
}
