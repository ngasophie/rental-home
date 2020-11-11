import React, {Component} from 'react';
class RecentPostRelative extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
          <div className="recent-posts">
          <div className="title">Recent posts</div>
          <div className="recent-post">
              <div className="recent-post-content">
                  <img src="https://code-theme.com/html/findhouses/images/feature-properties/fp-1.jpg" alt=""/>
                  <div className="content">
                      <div className="name">Mini</div>
                      <div className="price">4000000 VND</div>
                  </div>
              </div>

          </div>
          <div className="recent-post">
              <div className="recent-post-content">
                  <img src="https://code-theme.com/html/findhouses/images/feature-properties/fp-1.jpg" alt=""/>
                  <div className="content">
                      <div className="name">Mini</div>
                      <div className="price">4000000 VND</div>
                  </div>
              </div>

          </div>
          <div className="recent-post">
              <div className="recent-post-content">
                  <img src="https://code-theme.com/html/findhouses/images/feature-properties/fp-1.jpg" alt=""/>
                  <div className="content">
                      <div className="name">Mini</div>
                      <div className="price">4000000 VND</div>
                  </div>
              </div>

          </div>
      </div>
        )
    }
}
export default RecentPostRelative;