import React, {Component} from 'react';
import OwnerList from './OwnerItems/OwnerList';
import Pagination from './GeneralItems/Pagination'
import FormSearchSmall from './GeneralItems/FormSearchSmall'
import RecentPostRelative from './GeneralItems/RecentPostRelative'
class OwnerPage extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div className="list-post-page">
                <div className="container">
                    <div className="title">All Owner</div>
                        <div className="list-page-body">
                            <div className="aside-left">
                                <OwnerList></OwnerList>
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
export default OwnerPage;