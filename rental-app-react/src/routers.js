import React from 'react';
import MainPage from './components/MainPage/MainPage';
import ListPostPage from './components/MainPage/ListPostPage';
import OwnerPage from './components/MainPage/OwnerPage';
import Login from './components/MainPage/LoginPage';
import Register from './components/MainPage/RegisterPage';
import NotFoundPage from './components/MainPage/NotFoundPage';
import Dashboard from './components/DashBoard/Dashboard';
import Profile from './components/DashBoard/Profile';
import RecentPosts from './components/DashBoard/RecentPosts';
import ActivePosts from './components/DashBoard/ActivePosts';
import DisablePosts from './components/DashBoard/DisablePosts';
import Chat from './components/DashBoard/Chat';
import Reviews from './components/DashBoard/Reviews';
import AllPosts from './components/DashBoard/AllPosts';
import AddPostPage from './components/DashBoard/AddPostPage';
const routes = [
    {
        path:'/',
        exact:true,
        main:() => <MainPage/>
    },
    {
        path:'/list-post',
        exact:false,
        main:() => <ListPostPage/>
    },
    {
        path:'/list-owner',
        exact:false,
        main:() => <OwnerPage/>
    },
    {
        path:'/login',
        exact:false,
        main:() => <Login/>
    },
    {
        path:'/register',
        exact:false,
        main:() => <Register/>
    },
    {
        path:'/dashboard/register',
        exact:false,
        main:() => <Register/>
    },
    {
        path:'/dashboard/login',
        exact:false,
        main:() => <Login/>
    },
    {
        path:'/dashboard/main-page',
        exact:false,
        main:() => <Dashboard/>
    },
    {
        path:'/dashboard/profile',
        exact:false,
        main:() => <Profile/>
    },
    {
        path:'/dashboard/recent-posts',
        exact:false,
        main:() => <RecentPosts/>
    },
    {
        path:'/dashboard/active-posts',
        exact:false,
        main:() => <ActivePosts/>
    },
    {
        path:'/dashboard/disable-posts',
        exact:false,
        main:() => <DisablePosts/>
    },
    {
        path:'/dashboard/reviews',
        exact:false,
        main:() => <Reviews/>
    },
    {
        path:'/dashboard/all-posts',
        exact:false,
        main:() => <AllPosts/>
    },
    {
        path:'/dashboard/chat',
        exact:false,
        main:() => <Chat/>
    },
    {
        path:'/dashboard/add-post-page',
        exact:false,
        main:() => <AddPostPage/>
    },
    // {
    //     path:'/product/add',
    //     exact:false,
    //     main:({history}) => <ProductActionPage history ={history}/>
    // },
    // {
    //     path:'/product/:id/edit',
    //     exact:false,
    //     main:({match, history}) => <ProductActionPage history ={history} match ={match}/>
    // }
    // ,
    {
        path:'',
        exact: false,
        main: () => <NotFoundPage/>
    }
];
export default routes;