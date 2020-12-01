import React, {Component} from 'react';
import GridBox from './GridBox'
class Avatar extends Component{
    constructor(props){
        super(props)
    }
    render(){
        return(
            <div className="grid-boxes">
                <GridBox className="grid-box box-1" number={100}>Post</GridBox>
                <GridBox className="grid-box box-2" number={100}><i class="fas fa-thumbs-up"></i> Like</GridBox>
                <GridBox className="grid-box box-3" number={100}><i class="fas fa-heart"></i> Love</GridBox>
                <GridBox className="grid-box box-4" number={100}>Review</GridBox>
            </div>
        )
    }
}
export default Avatar;