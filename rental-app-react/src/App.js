import './css/style.css';
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";
import routes from './routers'
import React, {Component} from 'react';
import Nav from './components/DashBoard/MainPageItems/Nav'
import Footer from './components/DashBoard/MainPageItems/Footer/Footer';
import DashboardPage from './components/DashboardPage';
import IndexPage from './components/IndexPage'
class App extends Component{
  constructor(props){
    super(props)
  }
    render(){
      return (
        // <div className="App">
        //       <div className="dashboard-page">
        //           <Router>
        //             <Nav></Nav>
        //             {this.showContentMenu(routes)}
        //         </Router>
        //       </div>
        //   </div>
        <div className="App">
          <IndexPage></IndexPage>

        </div>
      );
    }
    // showContentMenu = (routes) =>{
    // let result = null;
    // if(routes.length >0){
    //   result = routes.map((route,index)=>{
    //     return (<Route
    //       key={index}
    //       path={route.path}
    //       exact = {route.exact}
    //       component = {route.main}
    //     />)
    //   });
    // }
    // return <Switch>{result}</Switch>
  
    }
  // }

// function App() {
//   return (
//     <div className="App">
//         <Router>
//       <div>
//         <nav>
//           <ul>
//           <li className="nav-link">
//                 <Link to="/home">Home</Link>
//             </li>
           
//           </ul>
//         </nav>

//         {/* A <Switch> looks through its children <Route>s and
//             renders the first one that matches the current URL. */}
//         <Switch>
          
//           <Route path="/home">
//             <MainPage></MainPage>
//           </Route>
//         </Switch>
//       </div>
//     </Router>
           
//       {/* <Nav></Nav> */}
//      {/* <MainPage></MainPage> */}
//      {/* <DetailPage></DetailPage> */}
//      {/* <ListPostPage></ListPostPage> */}
//      {/* <LoginPage></LoginPage> */}
//      {/* <OwnerPage></OwnerPage> */}
//      {/* <Footer></Footer> */}
//     </div>
//   );
// }

export default App;
