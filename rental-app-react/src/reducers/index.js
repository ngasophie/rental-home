//combine reducer
import {combineReducers} from 'redux';
import recommendPosts from './recommend_posts/recommend_posts';
const appReducers = combineReducers({
    recommendPosts
})
export default appReducers;