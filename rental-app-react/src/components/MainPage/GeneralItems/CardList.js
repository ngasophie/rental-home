import React, {Component} from 'react';
import CardItem from './CardItem'
class Post extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
                <div className="card-list">
                    <CardItem></CardItem>
                    <CardItem></CardItem>
                    <CardItem></CardItem>
                    <CardItem></CardItem>
                </div>
         )
    }
}
export default Post;