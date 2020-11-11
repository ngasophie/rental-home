import React, {Component} from 'react';
class Details extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
          <div className="details-box">
          <div className="properties">
              <div className="title">Properties</div>
              <div className="content">
                  <span>Type: House</span>
                  <span>Price: 3500000 VND</span>
                  <span>Rooms: 2</span>
                  <span>Bath: 1</span>
                  <span>DateModified: 2020/11/6</span>

              </div>
          </div>
          <div className="amenities">
              <div className="title">Amenities</div>
                  <div className="content">
                      <div className="amenitie">
                          <i className="fas fa-check-square"></i>
                          <label for="am1"> Air Cond</label><br/>
                      </div>
                      <div className="amenitie">
                          <i className="fas fa-check-square"></i>
                          <label for="am2"> Balcony</label><br/>
                      </div>
                      <div className="amenitie">
                          <i className="fas fa-check-square"></i>
                          <label for="am3"> Internet</label><br/>
                      </div>
                      <div className="amenitie">
                          <i className="fas fa-check-square"></i>
                          <label for="am4"> TV</label><br/>
                      </div>
                  </div>
          </div>
      </div>
         )
    }
}
export default Details;