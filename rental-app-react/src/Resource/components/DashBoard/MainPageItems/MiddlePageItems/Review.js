import React, {Component} from 'react';
class Review extends Component{
    constructor(props){
        super(props)
    }
    render(){
        return(
            <div className="review">
                <div className="avt">
                    <img src="./../images/social_icon/fb.png" alt=""/>
                </div>
                <span className="name">Mary</span>
                <span className="date-modified">2020/11</span>
                <div className="review-rate">
                    <i className="fa fa-star" aria-hidden="true"></i>
                    <i className="fa fa-star" aria-hidden="true"></i>
                    <i className="fa fa-star" aria-hidden="true"></i>
                    <i className="fa fa-star" aria-hidden="true"></i>
                    <i className="fa fa-star" aria-hidden="true"></i>
                </div>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos consectetur doloribus at tempora quibusdam nesciunt reprehenderit nisi facere doloremque deserunt, culpa obcaecati amet rem. Nemo omnis ex odio voluptates laboriosam.</p>
            </div>
        );
    }
}
export default Review;