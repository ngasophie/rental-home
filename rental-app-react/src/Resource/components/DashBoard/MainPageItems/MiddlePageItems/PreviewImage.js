import React, {Component} from 'react';
import {connect} from 'react-redux';
class PreviewImage extends Component{
    constructor(props){
        super(props);
    }
    render(){
        let {value} = this.props;
        if(!value) return;
        let list = value.map((x)=>{
            return (
              <figure className="col-md-4" >
                <img alt="picture" src={URL.createObjectURL(x)}
                  className="img-fluid"/>
            </figure>
            )
        })
        return(
            <div className="row">
            <div className="form-row col-md-12 flex-row">
              {list}
              </div>

          </div>
        )
    }
}
export default PreviewImage;