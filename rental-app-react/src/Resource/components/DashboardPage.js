import React, {Component} from 'react';
import Nav from './DashBoard/MainPageItems/Nav';
import Dashboard from './DashBoard/Dashboard'
import routes from './../routers';
import Login from './DashBoard/Login';
import {
    BrowserRouter as Router,
    Switch,
    Route,
    Redirect
  } from "react-router-dom";
class DashboardPage extends Component{
    constructor(props){
        super(props);

    }
    render(){
      let token = localStorage.getItem('owner-login');
      if(!token)  return <Redirect to='/dashboard/login'  />

        return(

            <div className="dashboard-page">
                <Router>
                    <Nav></Nav>
                    {this.showContentMenu(routes)}
                </Router>
            </div>
        );
    }
    showContentMenu = (routes) =>{
        let result = null;
        if(routes.length >0){
          result = routes.map((route,index)=>{
            return (<Route
              key={index}
              path={route.path}
              exact = {route.exact}
              component = {route.main}
            />)
          });
        }
        return <Switch>{result}</Switch>
    }    
}
export default DashboardPage;