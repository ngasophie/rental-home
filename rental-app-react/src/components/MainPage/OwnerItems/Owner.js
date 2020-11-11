import React, {Component} from 'react';
class Owner extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div className="card" data-aos="flip-left">
            <img className="d-block w-100" src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/1200px-Donald_Trump_official_portrait.jpg" alt="First slide"/>
            <div className="card-body">
              <h5 className="card-title">Donal Trump</h5>
              <div className="details">
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
            </div>
        </div>
        )
    }
}
export default Owner;