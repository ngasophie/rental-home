import React, {Component} from 'react';
class ImageBox extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
          <div className="image-box">
            <div className="img-left">
                <img src="https://code-theme.com/html/findhouses/images/interior/p-1.jpg" alt=""/>
            </div>
            <div className="img-right">
                <img src="https://code-theme.com/html/findhouses/images/interior/p-1.jpg" alt=""/>
                <img src="https://code-theme.com/html/findhouses/images/interior/p-1.jpg" alt=""/>
            </div>
        </div>
        )
    }
}
export default ImageBox;