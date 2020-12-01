import React, {Component} from 'react';
class FormProfile extends Component{
    constructor(props){
        super(props)
    }
    render(){
        return(
            <form id="form-profile">
                       
            <div className="form-row">
              <div className="form-group col-md-6">
                <label htmlFor="inputEmail4">Email</label>
                <input type="email" className="form-control" id="inputEmail4" placeholder="Email"/>
              </div>
              <div className="form-group col-md-6">
                <label htmlFor="inputPassword4">Password</label>
                <input type="password" className="form-control" id="inputPassword4" placeholder="Password"/>
              </div>
            </div>
            <div className="form-group">
              <label htmlFor="inputAddress">Indentification</label>
              <input type="text" className="form-control" id="inputAddress" placeholder="01234"/>
            </div>
            <div className="form-group">
              <label htmlFor="inputAddress2">Phone Number</label>
              <input type="text" className="form-control" id="inputAddress2" placeholder="01234"/>
            </div>
            <div className="form-row">
              <div className="form-group col-md-6">
                <label htmlFor="inputCity">City</label>
                <input type="text" className="form-control" id="inputCity"/>
              </div>
              <div className="form-group col-md-4">
                <label htmlFor="inputState">State</label>
                <select id="inputState" className="form-control">
                  <option selected>Choose...</option>
                  <option>...</option>
                </select>
              </div>
              <div className="form-group col-md-2">
                <label htmlFor="inputZip">Zip</label>
                <input type="text" className="form-control" id="inputZip"/>
              </div>
            </div>
            <div className="form-group">
                <label htmlFor="exampleFormControlTextarea1">About me</label>
                <textarea className="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Message"></textarea>
              </div>
            <div className="title">
                <div className="avt"><img src="https://scontent.fhan2-4.fna.fbcdn.net/v/t1.0-9/121113918_1240366553030406_3719126809594846406_o.jpg?_nc_cat=110&ccb=2&_nc_sid=09cbfe&_nc_ohc=bLm3htN5sOcAX_21wxp&_nc_ht=scontent.fhan2-4.fna&oh=13a1fa2c8a5759ea0ce7142d173763e9&oe=5FCC4BFF" alt=""/></div>
            </div>
            <div className="form-group">
                <label htmlFor="exampleFormControlFile1">Change avatar</label>
                <input type="file" className="form-control-file" id="exampleFormControlFile1"/>
              </div>
            <button type="submit" className="btn btn-primary">Sign in</button>
        </form>
        )
    }
}
export default FormProfile;