// import React, { Component } from 'react';
// import NavItem from './NavItems/NavItem'
import Avatar from './NavItems/Avatar'
import {NavItem} from 'reactstrap'
import React, {Component} from 'react';
import {Route, Link} from 'react-router-dom';
const menus = [
  {
    name:'Dashboard',
    to :'/dashboard/main-page',
    exact:true
  },
  {
    name:'Profile',
    to:'/dashboard/profile',
    exact:false
  },
  {
    name:'Recent posts',
    to:'/dashboard/recent-posts',
    exact:false
  },
  {
    name:'Active posts',
    to:'/dashboard/active-posts',
    exact:false
  },
  {
    name:'Disable posts',
    to:'/dashboard/disable-posts',
    exact:false
  },
  {
    name:'Reviews',
    to:'/dashboard/reviews',
    exact:false
  },
  {
    name:'All posts',
    to:'/dashboard/all-posts',
    exact:false
  },
  {
    name:'Chat',
    to:'/dashboard/chat',
    exact:false
  },
];
const MenuLink = ({label, to , activeOnlyExact}) =>{
  return (
    <Route
      path={to}
      exact={activeOnlyExact}
      children = {({match})=>{
        let active = match ? 'active' : '';
        return (
                <Link to={to}>
                    <i className="fas fa-comments"></i>
                    {label}
                </Link>                 
        )
      }}
    />
  );
}
class Nav extends Component {
    render(){

        return (
          <div className="left-page">
          <div className="left-page-content">
            <div className="close-nav">
              <i className="fas fa-times"></i>
            </div>
          <Avatar></Avatar>
            <div className="dashboard-link">
                {this.showMenu(menus)}
             </div>
             </div>
             </div>
        );
    }
    showMenu = (menus) =>{
      let result = null;
      if(menus.length >0){
        result = menus.map((menu,index)=>{
          return (
            <MenuLink
              key={index}
              label = {menu.name}
              to = {menu.to}
              activeOnlyExact = {menu.exact}
            />
          )
        })
      }
      return result;
    }
}

export default Nav;