import React, { Component } from 'react';
import UploadMulImage from './../MiddlePageItems/UploadMulImage';
import {connect} from 'react-redux';
class FormProfile extends Component {
    constructor(props) {
        super(props);
        this.state = {
            districts:[],
            types:[
                "Phòng trọ",
                "Chung cư mini",
                "Nhà nguyên căn",
                "Chung cư nguyên căn",
            ],
            rooms:[
                1,2,3,4,5,6,7,8,9
            ],
            kitchen:[
                'Bếp chung',
                "Bếp riêng",
                'Không nấu ăn'
            ],
            timeLine:[
                "1 tháng",
                "3 tháng",
                "6 tháng",
                "1 năm"
            ],
            waterUnit:[
                "1 số",
                "1 khối"
            ],
        }
    }
    onChange = (event) => {
        if(event.target.name == 'city'){
            let districts = this.state.districts;
            districts=[];
            let {dataLocation} = this.props;
            dataLocation = dataLocation.location
            for(let i=1; i<=63;i++){
                if(event.target.value == dataLocation[0][i].name){
                    console.log(Object.values(dataLocation[0][i].districts).length)
                    for(let j = 0; j<Object.values(dataLocation[0][i].districts).length;j++ ){
                        districts.push(Object.values(dataLocation[0][i].districts)[j]);
                    }
                    this.setState({
                        districts
                    })
                    break;
                }
            }  
        }
    }
    render() {
        let { dataLocation } = this.props;
        dataLocation = dataLocation.location;
        let {districts, types,rooms, kitchen, timeLine,waterUnit } = this.state;
        let city = [];
        let districtsList = {
            city: '',
            districts: []
        }
        if (dataLocation) {
            for (let i = 1; i <= 63; i++) {
                city.push(dataLocation[0][i].name)
            }
        }
        let listCity = '';
        if (city.length > 0) {
            listCity = city.map((index) =>
                <option value={index} key={index}>{index}</option>
            )
        }
        let listDistrict = districts.map((index) =>
            <option value={index} key={index}>{index}</option>
        )
      
        let listType = types.map((x,index)=>
        <option value={index} key={index}>{x}</option>
        )
        let listRoom = rooms.map((x,index)=>
        <option value={index} key={index}>{x}</option>
        )
        let listKitchen = kitchen.map((x,index)=>
        <option value={index} key={index}>{x}</option>
        )
        let listTimeLine = timeLine.map((x,index)=>
        <option value={index} key={index}>{x}</option>
        )
        let listWaterUnit = waterUnit.map((x,index)=>
        <option value={index} key={index}>{x}</option>
        )
        return (
            <form id="form-add-post">
                <div className="form-row">
                    <div className="form-group col-md-12">
                        <label for="inputEmail4">Title</label>
                        <input type="email" className="form-control" placeholder="title" />
                    </div>
                </div>
                <div className="form-row">
                    <div className="form-group  col-md-6">
                        <label for="inputState">City</label>
                        <select name="city" id="" onChange={this.onChange} className="form-control">
                            {listCity}
                        </select>

                    </div>
                    <div className="form-group  col-md-6">
                        <label for="inputState">District</label>
                        <select name="districts" id="" onChange={this.onChange} className="form-control">
                            <option value="">District</option>
                            {listDistrict}
                        </select>
                    </div>
                </div>
                <div className="form-row">
                    <div className="form-group  col-md-12">
                        <label for="inputZip">Address</label>
                        <input type="text" className="form-control" />
                    </div>
                </div>
                <div className="form-group ">
                    <label for="exampleFormControlTextarea1">Description</label>
                    <textarea className="form-control" rows="3"></textarea>
                </div>
                <div className="form-row">
                    <div className="form-row col-md-6 mr-1">
                        <label for="inputState">Type</label>
                        <select className="form-control">
                            {listType}
                        </select>
                    </div>
                    <div className="form-row col-md-6 mr-1">
                        <label for="inputState">Rooms</label>
                        <select className="form-control">
                            {listRoom}
                        </select>
                    </div>
                    <div className="form-row col-md-6 mr-1">
                        <label for="inputState">Bath rooms</label>
                        <input type="text" className="form-control" />
                    </div>
                    <div className="form-row col-md-6 mr-1">
                        <label>Area</label>
                        <input type="text" className="form-control" />
                    </div>
                    <div className="form-row col-md-6 mr-1">
                        <label>Kitchen</label>
                        <select className="form-control">
                            {listKitchen}
                        </select>
                    </div>
                    <div className="form-row col-md-6 mr-1">
                        <label>Water price/ number</label>
                        <input type="text" className="form-control" />
                    </div>
                    <div className="form-row col-md-6 mr-1">
                        <label for="inputState">Internet</label>
                        <input type="text" className="form-control" />

                    </div>
                    <div className="form-row col-md-6 mr-1">
                        <label for="inputState">Price per unit</label>
                        <select className="form-control">
                           {listTimeLine}
                        </select>
                    </div>
                    <div className="form-row col-md-6 mr-1">
                        <label for="inputState">Price</label>
                        <input type="text" className="form-control" />
                    </div>
                    <div className="form-row col-md-6 mr-1">
                        <label for="inputState">Price per unit</label>
                        <select className="form-control">
                          {listTimeLine}
                        </select>
                    </div>
                    {/* <div className="form-row col-md-6 mr-1">
                        <label for="inputState">Water price</label>
                        <input type="text" className="form-control" />
                    </div> */}
                    {/* <div className="form-row col-md-6 mr-1">
                        <label for="inputState">Price per unit</label>
                        <select className="form-control">
                            {listWaterUnit}
                        </select>
                    </div> */}
                </div>
                <div className="amenities mt-1 mb-1">
                    <div className="title">Amenities</div>
                    <div className="content">
                        <div className="form-row mt-1">
                            <div className="form-check mr-1">
                                <input className="form-check-input" type="checkbox" />
                                <label className="form-check-label" for="gridCheck">
                                    Air Cond
                            </label>
                            </div>
                            <div className="form-check mr-1">
                                <input className="form-check-input" type="checkbox" />
                                <label className="form-check-label" for="gridCheck">
                                    Bancony
                            </label>
                            </div>
                            <div className="form-check mr-1">
                                <input className="form-check-input" type="checkbox" />
                                <label className="form-check-label" for="gridCheck">
                                    General owner
                            </label>
                            </div>
                        </div>
                        <div className="form-group mt-1">
                            <label for="exampleFormControlTextarea1">Other</label>
                            <textarea className="form-control" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                <UploadMulImage></UploadMulImage>
                <div className="btn-box">
                    <button type="submit" id="submit" className="btn-submit">Submit All</button>
                </div>
            </form>
        )
    }
}
const mapStateToProps = state => {
    return {
      dataLocation: state.dataLocation,
    }
}
export default connect(mapStateToProps,null) (FormProfile);