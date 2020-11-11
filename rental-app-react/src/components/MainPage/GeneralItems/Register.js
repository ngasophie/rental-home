import React, {Component} from 'react';
import {Route, Link} from 'react-router-dom';

class Register extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div className="user-form" >
            <div className="form-box" data-aos="fade-down">
                    <Link to='/' className="close-left">
                        <i className="fas fa-times left"  id="close-1" data-dismiss="modal" aria-label="Close"></i>
                    </Link>                 
                <div className="btn-box">
                    {/* <div className="btn-box-color">
                        <Link to='/register'>
                            Register
                        </Link>   
                        <Link to='/login'  className="btn-login active">
                            Login
                        </Link>
                    </div> */}
                    Register
                </div>
                <div className="icon-box">
                    <img src="./images/social_icon/fb.png" alt=""/>
                    <img src="./images/social_icon/lk.png" alt=""/>
                    <img src="./images/social_icon/tw.png" alt=""/>
                </div>
                <form className="form" id="form-register">
                    <input type="text" className="name" name="name" placeholder="User name" required/>
                    <small className="name-error error-disable" >error</small>
                    <input type="email" className="email" name="email" placeholder="Email"  required/>
                    <small className="email-error error-disable" >error</small>
                    <input type="password" className="password" name="password" placeholder="Password" required/>
                    <small className="password-error error-disable">error</small>
                    <input type="password" className="password" name="password-cf" placeholder="Confirm your password" required/>
                    <small className="password-cf-error error-disable">error</small>
                    <div className="check-box">
                        <input type="checkbox"id="agree" className="check-box-input" name="remember"/>
                        <span>I agree the conditon</span>
                    </div>
                    <button type="submit" className="btn-submit">Register</button>
                    <Link to='/login' className= 'register-nav'>
                        <span className='hight-light'>Have an account? Login</span>
                    </Link>  
                </form>
            </div>
        </div>
         )
    }
}
export default Register;