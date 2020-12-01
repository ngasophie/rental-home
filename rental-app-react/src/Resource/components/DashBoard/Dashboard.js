import React, {Component} from 'react';
import Nav from './MainPageItems/Nav';
import Title from './MainPageItems/MiddlePageItems/Title'
import GridBoxList from './MainPageItems/MiddlePageItems/GridBoxList'
import Pagination from './MainPageItems/MiddlePageItems/Pagination'
import TableBordered from './MainPageItems/MiddlePageItems/TableBordered'
import TopPage from './MainPageItems/TopPageItems/TopPage';
import {connect} from 'react-redux';
import {Redirect} from 'react-router-dom';
import { actFetchRecommendPostRequest,actFetchLocationRequest} from './../../actions/index';
import {
   Link
  } from "react-router-dom";
class MainPage extends Component{
    constructor(props){
        super(props);

    }
    render(){
        const {recommendPosts} = this.props;
        const recentPosts = recommendPosts.slice(16,26);
        let token = localStorage.getItem('owner-login');
        if(!token){
            return <Redirect to='/dashboard/login'  />
        }
        return(
            
            <div className="right-page">
                <TopPage></TopPage>
                <div className="middle">
                    <div className="container">
                       <Title></Title>
                         <GridBoxList></GridBoxList>
                        <Link to ='/dashboard/add-post-page'>
                            <button type="button" className="btn btn-primary mt-2 ml-1"><i className="fas fa-plus-circle"></i>  Add post</button>
                        </Link>
                        <TableBordered value = {recommendPosts}></TableBordered>
                        <Pagination></Pagination>
                    </div>
                </div>
            </div>
        );
    }
    componentDidMount(){
        this.props.fetchAllRecommendPosts();
        this.props.fetchLocation();
    }
}
const mapStateToProps = state =>{
return {
    recommendPosts:state.recommendPosts,
    dataLocation:state.dataLocation,
    img_src:state.img_src
}
}
const mapDispatchToProps = (dispatch, props)=>{
return {
    fetchAllRecommendPosts:() =>{
        dispatch(actFetchRecommendPostRequest());
    },
    fetchLocation:() =>{
        dispatch(actFetchLocationRequest());
    }
}
}
export default connect(mapStateToProps,mapDispatchToProps) (MainPage);