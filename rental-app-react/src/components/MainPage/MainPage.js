import React, {Component} from 'react';
import FormSearch from './MainPageItems/MiddleItems/FormSearch'
import RecommendText from './MainPageItems/MiddleItems/RecommendText'
import RecommendPosts from './MainPageItems/MiddleItems/RecommendPosts'
import CarouselEx from './MainPageItems/MiddleItems/CarouselEx';
import CardList from './GeneralItems/CardList'
import RecentPostList from './MainPageItems/MiddleItems/RecentPostList';
import axios from 'axios';
import {connect} from 'react-redux';
import {actFetchRecommendPostRequest} from './../../actions/index';
import callApi from './../../utils/apiCaller';
class MainPage extends Component{
    constructor(props){
        super(props);
    }
    render(){
        let {recommendPosts} = this.props;
        let arr1= recommendPosts.slice(0,4);
        let arr2= recommendPosts.slice(4,12);
        let arr3= recommendPosts.slice(12,17);
        let arr4= recommendPosts.slice(17,21);
        return(
           <div>
               <section className="body-content">
                    <section className="body-title" data-aos="zoom-in-right">
                        <div className="body-title-fade"></div>
                        <div className="body-title-text">
                            <h3  data-aos="fade-up">EA</h3>
                            <h1  data-aos="fade-up">Find accomodate easy than ever </h1>
                            <FormSearch></FormSearch>
                        </div>
                    </section>
                    <RecommendText></RecommendText>
                    <RecommendPosts value = {arr1}></RecommendPosts>
                    <RecommendText></RecommendText>
                    <div className="container carousel-list">
                        <CarouselEx></CarouselEx>
                   
                    </div>
                    <RecommendText></RecommendText>
                    <div className="container">
                        <CardList></CardList>
                    </div>
                    <RecommendText></RecommendText>
                    <RecentPostList></RecentPostList>
                </section>
                <br/>
            </div>
        )
    }
    componentDidMount(){
        this.props.fetchAllRecommendPosts()
    }
}
const mapStateToProps = state =>{
    return {
        recommendPosts:state.recommendPosts
    }
}
const mapDispatchToProps = (dispatch, props)=>{
    return {
        fetchAllRecommendPosts:() =>{
            dispatch(actFetchRecommendPostRequest());
        }
    }
}
export default connect(mapStateToProps,mapDispatchToProps) (MainPage);