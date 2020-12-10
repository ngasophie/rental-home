import React, {Component} from 'react';
import {Link} from 'react-router-dom';
class TableBordered extends Component{
    constructor(props){
        super(props)
    }
    render(){
      let {value, indexOfTable } = this.props;
      if(value.length <=0) return '';
     
      let list = value.map((x,index) =>{
        indexOfTable++;
            switch(x.status){
              case 1: x.status = 'Active';
              break;
              case 2: x.status = 'Waiting';
              break;
              case 0: x.status = 'Disable';
              break;    
          }
          return(
            <tr key={index+1}>
              <th scope="row">{indexOfTable}</th>
              <td>{x.title}</td>
              <td>{x.created_at}</td>
              <td>{`${x.address.district}, ${x.address.city}`}</td>
              <td>{x.status}</td>
              <td>
              <Link to={`/dashboard/view-post/${x.id}`}>
                  <i className="far fa-eye"></i>
              </Link>
               </td>
              <td>
                <Link to='/dashboard/view-post'>
                   <i className="far fa-edit"></i>
                </Link>
                </td>
              <td><i className="far fa-trash-alt"></i></td>

            </tr>)
      }
      )
        return(
            <table className="table table-bordered mt-1">
            <thead>
              <tr>
                <th scope="col">Listing</th>
                <th scope="col" className="cell-2">Post name</th>
                <th scope="col">Date</th>
                <th scope="col">Located</th>
                <th scope="col">Status</th>
                <th scope="col">View</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
              </tr>
            </thead>
            <tbody>
             {list}
            </tbody>
          </table>
        )
    }
}
export default TableBordered;