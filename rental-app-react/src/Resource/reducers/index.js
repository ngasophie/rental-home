//combine reducer
import {combineReducers} from 'redux';
import recommendPosts from './recommend_posts/recommend_posts';
import {allPosts} from './all_posts/all_posts';
import {allOwners} from './all_owners/all_owners';
import {lastPageAllOwner} from './all_owners/all_owners';
import {currentPage} from './currentPage/currentPage';
import post from './post/post';
import dataLocation from './location/data';
import img_src from './img_src/img_src'
import {lastPageAllPost} from './all_posts/all_posts';
import owner from './dashboardReducer/owner_id';
import recentPostPerOwner from './dashboardReducer/recentPostPerOwner';
import summaryPerOwner from './dashboardReducer/summaryPerOwner';
import {allPostPerOwner, activePostPerOwner, disablePostPerOwner,
    lastPageAllPostDashboard,
    lastPageActivePost,
    lastPageDisablePost
} from './dashboardReducer/postPerOwner';
const appReducers = combineReducers({
    recommendPosts,
    allPosts,
    currentPage,
    allOwners,
    post,
    dataLocation,
    img_src,
    lastPageAllPost,
    lastPageAllOwner,
    owner,
    recentPostPerOwner,
    summaryPerOwner,
    allPostPerOwner,
    activePostPerOwner,
    disablePostPerOwner,
    lastPageAllPostDashboard,
    lastPageActivePost,
    lastPageDisablePost
})
export default appReducers;