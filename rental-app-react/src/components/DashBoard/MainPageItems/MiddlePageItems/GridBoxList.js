import React, {Component} from 'react';
import GridBox from './GridBox'
class Avatar extends Component{
    constructor(props){
        super(props)
    }
    render(){
        return(
            <div className="grid-boxes">
                <GridBox></GridBox>
                <GridBox></GridBox>
                <GridBox></GridBox>
                <GridBox></GridBox>
            </div>
        )
    }
}
export default Avatar;