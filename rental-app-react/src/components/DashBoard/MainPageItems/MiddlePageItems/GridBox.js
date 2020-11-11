import React, {Component} from 'react';
class GridBox extends Component{
    constructor(props){
        super(props)
    }
    render(){
        return(
            <div className="grid-box box-1">
            <div className="title">Post</div>
            <div className="number">100</div>
            <div className="date-modified">Since last week</div>
        </div>
        )
    }
}
export default GridBox;