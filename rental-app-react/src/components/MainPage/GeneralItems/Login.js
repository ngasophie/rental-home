import React, {Component} from 'react';
import {Route, Link} from 'react-router-dom';
class Login extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div className="user-form" >
                    <div className="form-box"data-aos="fade-down">
                    <Link to='/' className="close-left">
                        <i className="fas fa-times left"  id="close-1" data-dismiss="modal" aria-label="Close"></i>
                    </Link>  
                        <div className="btn-box">
                            Login
                        </div>
                        <div className="icon-box">
                            <img src="./images/social_icon/fb.png" alt=""/>
                            <img src="./images/social_icon/lk.png" alt=""/>
                            <img src="./images/social_icon/tw.png" alt=""/>
                        </div>
                        <form className="form" id="form-login">
                            <input type="email" className="email" name="email" placeholder="Email" required/>
                            <small className="email-error error-disable" >error</small>
                            <input type="password" className="password" name="password" placeholder="Password" required/>
                            <small className="password-error error-disable">error</small>
                            <div className="check-box">
                                <input type="checkbox"id="remember-password" className="check-box-input" name="remember"/>
                                <span>Remember your password</span>
                            </div>
                            <button type="submit" className="btn-submit">Login</button>
                            <Link to='/register' className= 'register-nav'>
                            <span className='hight-light'>Don't have an account? Register</span>
                            </Link>  
                        </form>
                    </div>
            
          </div>
         )
    }
}
export default Login;