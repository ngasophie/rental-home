import React, {Component} from 'react';
class FormProfile extends Component{
    constructor(props){
        super(props)
    }
    render(){
        return(
            <form id="form-add-post">
            <div className="form-row">
                <div className="form-group col-md-6">
                    <label for="inputEmail4">Title</label>
                    <input type="email" className="form-control" placeholder="title"/>
                </div>
            </div>
            <div className="form-row">
                <div className="form-group  col-md-4">
                    <label for="inputState">City</label>
                    <select className="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                </div>
                <div className="form-group  col-md-4">
                    <label for="inputState">Distric</label>
                    <select className="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                </div>
                <div className="form-group  col-md-4">
                    <label for="inputState">Street</label>
                    <select className="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                </div>
            </div>
            <div className="form-row">
                <div className="form-group  col-md-4">
                    <label for="inputZip">Address</label>
                    <input type="text" className="form-control"/>
                </div>
            </div>
            <div className="form-group ">
                <label for="exampleFormControlTextarea1">Description</label>
                <textarea className="form-control" rows="3"></textarea>
            </div>
            <div className="form-row">
                <div className="form-row col-md-4 mr-1">
                    <label for="inputState">Type</label>
                    <select className="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                </div>
                <div className="form-row col-md-4 mr-1">
                    <label for="inputState">Rooms</label>
                    <select className="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                </div>
                <div className="form-row col-md-4">
                    <label for="inputState">Bath rooms</label>
                    <select className="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                </div>
            </div>
            <div className="form-row">
                <div className="form-row col-md-4 mr-1">
                    <label>Area</label>
                    <input type="text" className="form-control"/>
                </div>
                <div className="form-row col-md-4">
                    <label>Price</label>
                    <input type="text" className="form-control"/>
                </div>
            </div>
            <div className="amenities mt-1 mb-1">
                <div className="title">Amenities</div>
                <div className="content">
                    <div className="form-row mt-1">
                        <div className="form-check mr-1">
                            <input className="form-check-input" type="checkbox"/>
                            <label className="form-check-label" for="gridCheck">
                                Air Cond
                            </label>
                        </div>
                        <div className="form-check mr-1">
                            <input className="form-check-input" type="checkbox"/>
                            <label className="form-check-label" for="gridCheck">
                                Bancony
                            </label>
                        </div>
                        <div className="form-check mr-1">
                            <input className="form-check-input" type="checkbox"/>
                            <label className="form-check-label" for="gridCheck">
                                Internet
                            </label>
                        </div>
                        <div className="form-check ">
                            <input className="form-check-input" type="checkbox"/>
                            <label className="form-check-label" for="gridCheck">
                                TV
                            </label>
                        </div>
                    </div>
                </div>
            </div>
           
        </form>
        )
    }
}
export default FormProfile;