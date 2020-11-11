import React, {Component} from 'react';
import Description from './DetailPageItems/Description'
import Details from './DetailPageItems/Details'
import FormAddReview from './DetailPageItems/FormAddReview'
import ImageBox from './DetailPageItems/ImageBox'
import OwnerInfor from './DetailPageItems/OwnerInfor'
import RecentPostRelative from './GeneralItems/RecentPostRelative'
import ReviewList from './DetailPageItems/ReviewList'
import Title from './DetailPageItems/Title'
class DetailPage extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
           <div>
               <div className="details-page">
                <ImageBox></ImageBox>
                <div className="container">
                    <div className="aside-left">
                        <Title></Title>
                        <Description></Description>
                        <Details></Details>
                        <ReviewList></ReviewList>
                        <FormAddReview></FormAddReview>
                    </div>
                    <div className="aside-right">
                        <OwnerInfor></OwnerInfor>
                        <RecentPostRelative></RecentPostRelative>
                    </div>
                </div>
            </div>
               <br/>
            </div>
        )
    }
}
export default DetailPage;