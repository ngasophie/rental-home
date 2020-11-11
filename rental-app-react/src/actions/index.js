import * as types from './../constants/actionTypes';
import callApi from './../utils/apiCaller';
export const actFetchRecommendPostRequest = () =>{
    return(dispatch) =>{
        return callApi('recommend-posts', 'GET', null).then(res=>{
            dispatch(actFetchRecommendPost(res.data));
        })
    }
}
export const actFetchRecommendPost = (recommendPosts) =>{
    return {
        type:types.FETCH_RECOMMEND_POSTS,
        recommendPosts,
    }
}
// midderware là 1 cấu trúc lớp nằm ở giữa giupws phân chia ứng daungj thành các
//  lớp khác nhau:Logging, Crash Report
//  là lớp nằm giữa reducers và dispatch actions
//  trc khi reducer nhận dc action và sau khi action đã dc dispatch
// redux-thunk, redux-saga...