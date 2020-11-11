import React, {Component} from 'react';
class OwnerInfor extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div className="owner-infor">
            <div className="title">Agent infor</div>
            <div className="avt"><img src="./images/social_icon/fb.png" alt=""/></div>
            <div className="name">Lisa</div>
            <div className="location infor">
                <i className="fas fa-map-marker-alt"></i>
                <span>Ha Noi</span>
            </div>
            <div className="phone infor">
                <i className="fas fa-phone-alt"></i>
                <span>0975109203</span>
            </div>
            <div className="email infor">
                <i className="far fa-envelope"></i>
                <span>ttntrinhnga@gmail.com</span>
            </div>
        </div>
         )
    }
}
export default OwnerInfor;