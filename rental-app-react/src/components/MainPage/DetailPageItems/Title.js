import React, {Component} from 'react';
class Title extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div className="title-box">
                <div className="title">Luxury Villa House</div>
                <div className="location">Ha noi</div>
                <div className="price">3500000 VND</div>
            </div>
         )
    }
}
export default Title;