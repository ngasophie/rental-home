import React, {Component} from 'react';
import Title from './MainPageItems/MiddlePageItems/Title'
import TopPage from './MainPageItems/TopPageItems/TopPage';
import Footer from './MainPageItems/Footer/Footer';
import FormChat from './MainPageItems/MiddlePageItems/FormChat'
class Chat extends Component{
    constructor(props){
        super(props);

    }
    render(){
        return(
    
            <div className="right-page">
                <TopPage></TopPage>
                <div className="middle">
                    <div className="container">
                       <Title></Title>
                       <br></br>
                        <FormChat></FormChat>
                    </div>
                </div>
                <Footer></Footer>
            </div>
        );
    }
}
export default Chat;