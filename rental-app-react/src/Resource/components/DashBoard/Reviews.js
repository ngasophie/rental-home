import React, {Component} from 'react';
import Title from './MainPageItems/MiddlePageItems/Title'
import Pagination from './MainPageItems/MiddlePageItems/Pagination'
import TopPage from './MainPageItems/TopPageItems/TopPage';
import Footer from './MainPageItems/Footer/Footer';
import ReviewList from './MainPageItems/MiddlePageItems/ReviewList'
class Reviews extends Component{
    constructor(props){
        super(props);

    }
    render(){
        return(
    
            <div className="right-page">
                <TopPage></TopPage>
                <div className="middle">
                    <div className="container">
                       <Title></Title>
                        <button type="button" className="btn btn-primary mt-2 ml-1"><i className="fas fa-plus-circle"></i>  Add post</button>
                        <ReviewList></ReviewList>
                        <Pagination></Pagination>
                    </div>
                </div>
                <Footer></Footer>
            </div>
        );
    }
}
export default Reviews;