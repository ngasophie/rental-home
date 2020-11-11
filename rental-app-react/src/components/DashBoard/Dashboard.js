import React, {Component} from 'react';
import Nav from './MainPageItems/Nav';
import Title from './MainPageItems/MiddlePageItems/Title'
import GridBoxList from './MainPageItems/MiddlePageItems/GridBoxList'
import Pagination from './MainPageItems/MiddlePageItems/Pagination'
import TableBordered from './MainPageItems/MiddlePageItems/TableBordered'
import TopPage from './MainPageItems/TopPageItems/TopPage';
import {
   Link
  } from "react-router-dom";
class MainPage extends Component{
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
                         <GridBoxList></GridBoxList>
                        <Link to ='/dashboard/add-post-page'>
                            <button type="button" className="btn btn-primary mt-2 ml-1"><i className="fas fa-plus-circle"></i>  Add post</button>
                        </Link>
                        <TableBordered></TableBordered>
                        <Pagination></Pagination>
                    </div>
                </div>
            </div>
        );
    }
}
export default MainPage;