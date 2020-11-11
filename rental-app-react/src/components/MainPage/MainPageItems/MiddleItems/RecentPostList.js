import React, {Component} from 'react';
import RecentPost from './RecentPost'
class CardItem extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
          <div className="recent-post" data-aos="fade-up">
            <div className="container">
                <div className="recent-post-list">
                    <RecentPost></RecentPost>
                    <RecentPost></RecentPost>
                    <RecentPost></RecentPost>
                </div>
            </div>
          </div>
        )
    }
}
export default CardItem;