import React, {Component} from 'react';
import Review from './Review'
class ReviewList extends Component{
    constructor(props){
        super(props)
    }
    render(){
        return(
            <div className="reviews-box">
                <div className="title"> 3 Reviews</div>
                <Review></Review>
                <Review></Review>
                <Review></Review>
            </div>
        );
    }
}
export default ReviewList;