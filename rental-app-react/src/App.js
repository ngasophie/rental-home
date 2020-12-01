
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";
import React, {Component} from 'react';
import DashboardPage from './Resource/components/DashboardPage';
import IndexPage from './Resource/components/IndexPage';
import Login from './Resource/components/DashBoard/Login';
class App extends Component{
  constructor(props){
    super(props)
  }
    render(){
      return (
        <div className="App">
            <Router>
                <Switch>
                  <Route exact  path="/" children={<IndexPage />} />
                  <Route exact  path="/dashboard/login" children={<Login />} />
                  <Route exact  path="/dashboard/main-page" children={<DashboardPage />} />
                </Switch>
            </Router>
          </div>
        
      );
    }
   
    }
  
export default App;
