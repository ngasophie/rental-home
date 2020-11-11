import React, {Component} from 'react';
class Description extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
          <div className="des-box">
          <div className="title">Description</div>
          <div className="content">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum rerum beatae consequatur, totam fugit, alias fuga aliquam quod tempora a nisi esse magnam nulla quas! Error praesentium, vero dolorum laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum rerum beatae consequatur, totam fugit.</div>
      </div>
         )
    }
}
export default Description;