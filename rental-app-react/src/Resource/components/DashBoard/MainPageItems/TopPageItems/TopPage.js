import React, {Component} from 'react';
class TopPage extends Component{
    constructor(props){
        super(props)
    }
    render(){
        return(
            <div className="top">
            <div className="container">
                <div className="toggle-collapse">
                    <div className="toggle-icons">
                        <i className="fas fa-bars"></i>
                    </div>
                </div> 
                <div>
                    <i className="far fa-bell"></i>
                </div>
                <div>
                    <i className="far fa-envelope"></i>
                </div>
                <div className="avt"><img src="https://scontent.fhan2-4.fna.fbcdn.net/v/t1.0-9/121113918_1240366553030406_3719126809594846406_o.jpg?_nc_cat=110&ccb=2&_nc_sid=09cbfe&_nc_ohc=bLm3htN5sOcAX_21wxp&_nc_ht=scontent.fhan2-4.fna&oh=13a1fa2c8a5759ea0ce7142d173763e9&oe=5FCC4BFF" alt=""/></div>
                <div className="dropdown">
                    <button className="dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Nga Trinh
                    </button>
                    <div className="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a className="dropdown-item" href="#">Action</a>
                      <a className="dropdown-item" href="#">Another action</a>
                      <a className="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
            </div>
        </div>
        )
    }
}
export default TopPage;