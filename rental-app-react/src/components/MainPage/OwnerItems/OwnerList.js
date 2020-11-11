import React, {Component} from 'react';
import Owner from './Owner'
class DetailPage extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div className="card-list">
                <Owner></Owner>        
                <Owner></Owner>        
                <Owner></Owner>        
                <Owner></Owner>        
                <Owner></Owner>        
                <Owner></Owner>        
            </div>
        )
    }
}
export default DetailPage;