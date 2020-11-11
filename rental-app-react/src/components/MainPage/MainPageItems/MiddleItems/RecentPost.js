import React, {Component} from 'react';
class CardItem extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
          <div className="recent-post-content"data-aos="fade-right">
                        <img src="https://cdn.luxstay.com/rooms/27340/large/512420ef3ffcd9a280ed.jpg" alt=""/>
                        <div className="recent-post-text">
                            <div className="title"  data-aos="fade-up">Rental home cheapest</div>
                            <div className="description"  data-aos="fade-up"><span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae eius ea esse vero, optio modi magni temporibus cupiditate rem placeat deserunt maiores explicabo accusamus nam quam? Cupiditate et consequatur repudiandae!</span></div>
                            <div className="details"  data-aos="fade-up">
                                <div className="post-infor-content">
                                    <div className="region">Nam Tu Liem</div>
                                    <i className="fas fa-star"></i>
                                    <i className="fas fa-star"></i>
                                    <i className="fas fa-star"></i>
                                    <i className="fas fa-star"></i>
                                    <i className="fas fa-star"></i>
                                    <div className="price">3500000 VND</div>
                                    <div className="area"><i className="fas fa-arrows-alt"></i> 35 m2</div>
                                </div>
                                <button className="btn"  data-aos="fade-up">View details <i className="fas fa-arrow-right"></i></button>
                            </div>
                        </div>
                    </div>
        );
    }
}
export default CardItem;