import React, {Component} from 'react';
class TableBordered extends Component{
    constructor(props){
        super(props)
    }
    render(){
        return(
            <table className="table table-bordered mt-1">
            <thead>
              <tr>
                <th scope="col">Listing</th>
                <th scope="col" className="cell-2">Post name</th>
                <th scope="col">Date</th>
                <th scope="col">Status</th>
                <th scope="col">View</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Post 1</td>
                <td>2020</td>
                <td>Active</td>
                <td><i className="far fa-eye"></i></td>
                <td><i className="far fa-edit"></i></td>
                <td><i className="far fa-trash-alt"></i></td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatum officia ducimus obcaecati eveniet laboriosam, cumque sequi ut, magni ipsam minima incidunt et consequatur ab, distinctio delectus cum debitis ea quidem.</td>
                <td>2020</td>
                <td>Active</td>
                <td><i className="far fa-eye"></i></td>
                <td><i className="far fa-edit"></i></td>
                <td><i className="far fa-trash-alt"></i></td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>Post 1</td>
                <td>2020</td>
                <td>Active</td>
                <td><i className="far fa-eye"></i></td>
                <td><i className="far fa-edit"></i></td>
                <td><i className="far fa-trash-alt"></i></td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>Post 1</td>
                <td>2020</td>
                <td>Active</td>
                <td><i className="far fa-eye"></i></td>
                <td><i className="far fa-edit"></i></td>
                <td><i className="far fa-trash-alt"></i></td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>Post 1</td>
                <td>2020</td>
                <td>Active</td>
                <td><i className="far fa-eye"></i></td>
                <td><i className="far fa-edit"></i></td>
                <td><i className="far fa-trash-alt"></i></td>
              </tr>
             
            </tbody>
          </table>
        )
    }
}
export default TableBordered;