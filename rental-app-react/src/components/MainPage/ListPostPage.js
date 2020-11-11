import React, {Component} from 'react';
import PostList from './GeneralItems/PostList'
import CardList from './GeneralItems/CardList'
import Pagination from './GeneralItems/Pagination'
import FormSearchSmall from './GeneralItems/FormSearchSmall'
import RecentPostRelative from './GeneralItems/RecentPostRelative'
class ListPostPage extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div className="list-post-page">
            <div className="container">
                <div className="title">All Post</div>
                <div className="list-page-body">
                    <div className="aside-left">
                        <CardList></CardList>
                        <CardList></CardList>
                        <Pagination></Pagination>
                    </div>
                    <div className="aside-right">
                    <FormSearchSmall></FormSearchSmall>
                    <RecentPostRelative></RecentPostRelative>
                    </div>
                </div>     
            </div>
        </div>
        )
    }
}
export default ListPostPage;