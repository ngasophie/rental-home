import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import reportWebVitals from './reportWebVitals';
import 'bootstrap/dist/css/bootstrap.min.css';

import animation from './animation';
import AOS from 'aos';
import './css/style.css'
import './css/details.css'
import './css/footer.css'
import './css/listPost.css'
import './css/main.css'
import './css/nav.css'
import './css/user.css'
// import './css/carousel.css'
import './css/dashboard.css'
import './css/responsive_dashboard.css'
import './css/responsive.css';
// import "~slick-carousel/slick/slick.css"; 
// import "~slick-carousel/slick/slick-theme.css";

// ..
import {createStore, applyMiddleware} from 'redux';
import appReducers from './reducers/index';
import {Provider} from 'react-redux';
import thunk from 'redux-thunk';
AOS.init();
animation();
const store = createStore(
  appReducers,
  // call api => dispatch
  applyMiddleware(thunk)
)
ReactDOM.render(
 <Provider store = {store}>
   <App/>
 </Provider>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
