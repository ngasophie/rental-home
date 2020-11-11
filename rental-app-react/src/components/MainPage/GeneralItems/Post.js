import React, {Component} from 'react';
class Post extends Component{
    constructor(props){
        super(props);
    }
    render(){
        const {post} = this.props;
        return(
            <div className="post"data-aos="fade-right">
                        <img src="https://cdn.luxstay.com/home/location/location_5_1559735011.png" alt=""/>
                        
                        <div className="post-infor">
                            <div className="post-fade">
                            </div>
                            <div className="post-infor-content">
                                <div className="region">{post.location}</div>
                                <i className="fas fa-star"></i>
                                <i className="fas fa-star"></i>
                                <i className="fas fa-star"></i>
                                <i className="fas fa-star"></i>
                                <i className="fas fa-star"></i>
                                <div className="price">{post.price}</div>
                                <div className="area">{post.area}</div>
                            </div>
                        </div>
                    </div>
         )
    }
}
export default Post;