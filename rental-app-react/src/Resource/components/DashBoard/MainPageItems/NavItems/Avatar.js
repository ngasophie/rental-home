import React, {Component} from 'react';
class Avatar extends Component{
    constructor(props){
        super(props)
    }
    render(){
        return(
            <div className="title">
            <div className="avt"><img src="https://scontent.fhan2-4.fna.fbcdn.net/v/t1.0-9/121113918_1240366553030406_3719126809594846406_o.jpg?_nc_cat=110&ccb=2&_nc_sid=09cbfe&_nc_ohc=bLm3htN5sOcAX_21wxp&_nc_ht=scontent.fhan2-4.fna&oh=13a1fa2c8a5759ea0ce7142d173763e9&oe=5FCC4BFF" alt=""/></div>
            <div className="name">Nga Trinh</div>
        </div>
        )
    }
}
export default Avatar;