import React, {Component} from 'react';
class CardItem extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div className="card" data-aos="flip-left">
                        <div id="#myCarousel1" className="carousel slide" data-ride="carousel">
                            <div className="carousel-inner">
                              <div className="carousel-item active">
                                <img className="d-block w-100" src="https://cdn.luxstay.com/rooms/12182/large/PVN_0564.JPG" alt="First slide"/>
                              </div>
                              <div className="carousel-item">
                                <img className="d-block w-100" src="https://cdn.luxstay.com/rooms/12182/large/PVN_0564.JPG" alt="Second slide"/>
                              </div>
                              <div className="carousel-item">
                                <img className="d-block w-100" src="https://cdn.luxstay.com/rooms/12182/large/PVN_0564.JPG" alt="Third slide"/>
                              </div>
                            </div>
                          </div>
                        <div className="card-body">
                          <h5 className="card-title">Rental home</h5>
                          <div className="reviews">
                            <i className="fas fa-star"></i>
                            <i className="fas fa-star"></i>
                            <i className="fas fa-star"></i>
                            <i className="fas fa-star"></i>
                            <i className="fas fa-star"></i>
                              10 reviews
                          </div>
                          <div className="details">
                              <div className="price"><i className="fas fa-dollar-sign"></i> 3500000 VND</div>
                              <div className="area">35 m<sup><small>2</small></sup></div>
                              <div className="date-modified"><i className="far fa-calendar-alt"></i> 2020/11/05</div>
                              <div className="located"><i className="fas fa-location-arrow"></i> Nam Tu Liem</div>
                          </div>
                        </div>
                      </div>
         )
    }
}
export default CardItem;