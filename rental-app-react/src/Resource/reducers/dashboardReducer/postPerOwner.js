import * as types from '../../constants/actionTypes';
let initialState = null;// du lieu dau vao
export const allPostPerOwner= (state = initialState, action)=>{
    //  action truyen tu action/index sang => phan tich action
    switch(action.type){
        case types.FETCH_ALL_POST_PER_OWNER:
         state = action.allPostPerOwner;
         return state;
        default: return state
    }
}
// get last page
export const lastPageAllPostDashboard= (state = initialState, action)=>{
    //  action truyen tu action/index sang => phan tich action
    switch(action.type){
        case types.FETCH_ALL_POST_PER_OWNER:
         state = action.lastPageAllPostDashboard;
         return state;
        default: return state
    }
}
export const activePostPerOwner= (state = initialState, action)=>{
    //  action truyen tu action/index sang => phan tich action
    switch(action.type){
        case types.FETCH_ACTIVE_POST_PER_OWNER:
         state = action.activePostPerOwner;
         return state;
        default: return state
    }
}
export const lastPageActivePost= (state = initialState, action)=>{
    //  action truyen tu action/index sang => phan tich action
    switch(action.type){
        case types.FETCH_ACTIVE_POST_PER_OWNER:
         state = action.lastPageActivePost;
         return state;
        default: return state
    }
}
export const disablePostPerOwner= (state = initialState, action)=>{
    //  action truyen tu action/index sang => phan tich action
    switch(action.type){
        case types.FETCH_DISABLE_POST_PER_OWNER:
         state = action.disablePostPerOwner;
         return state;
        default: return state
    }
}
export const lastPageDisablePost= (state = initialState, action)=>{
    //  action truyen tu action/index sang => phan tich action
    switch(action.type){
        case types.FETCH_DISABLE_POST_PER_OWNER:
         state = action.lastPageDisablePost;
         return state;
        default: return state
    }
}

