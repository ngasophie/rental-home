import React, {Component} from 'react';
class FormSearch extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div className="search-box">
                   <select name="location" id="">
                       <option value="">Location</option>
                       <option value="">Ha noi</option>
                   </select>
                   <select name="type" id="">
                       <option value="">Property type</option>
                       <option value="">Ha noi</option>
                   </select>
                   <select name="beds" id="">
                       <option value="">Beds</option>
                       <option value="">Ha noi</option>
                   </select>
                   <select name="price" id="">
                       <option value="">Any price</option>
                       <option value="">Ha noi</option>
                   </select>
                   <select name="area" id="">
                       <option value="">Area</option>
                       <option value="">Ha noi</option>
                   </select>
                   <button>Search</button>
               </div>
        )
    }
}
export default FormSearch;