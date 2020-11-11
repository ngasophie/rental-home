import React, {Component} from 'react';
class Review extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
          <div className="review">
          <div className="avt">
              <img src="https://scontent.fhan2-4.fna.fbcdn.net/v/t1.0-9/121113918_1240366553030406_3719126809594846406_o.jpg?_nc_cat=110&ccb=2&_nc_sid=09cbfe&_nc_ohc=bLm3htN5sOcAX_21wxp&_nc_ht=scontent.fhan2-4.fna&oh=51319d2a00627b14bd35cad49082c70a&oe=5FD0407F" alt=""/>
          </div>
          <span className="name">Mary</span>
          <span className="date-modified">2020/11</span>
          <div className="review-rate">
              <i className="fa fa-star" aria-hidden="true"></i>
              <i className="fa fa-star" aria-hidden="true"></i>
              <i className="fa fa-star" aria-hidden="true"></i>
              <i className="fa fa-star" aria-hidden="true"></i>
              <i className="fa fa-star" aria-hidden="true"></i>
          </div>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos consectetur doloribus at tempora quibusdam nesciunt reprehenderit nisi facere doloremque deserunt, culpa obcaecati amet rem. Nemo omnis ex odio voluptates laboriosam.</p>
      </div>
         )
    }
}
export default Review;