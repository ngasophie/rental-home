import React, {Component} from 'react';
class TableBordered extends Component{
    constructor(props){
        super(props)
    }
    render(){
      const {value } = this.props;
      console.log(value);
      if(value.length <=0) return '';
      // switch(value.status){
      //     case 1: value.status = 'Hoạt động';
      //     break;
      //     case 2: value.status = 'Còn phòng';
      //     break;
      //     case 3: value.status = 'Hết phòng';
      //     break;
      //     case 4: value.status = 'Gia hạn';
      //     break;
      //     case 5: value.status = 'Chờ duyệt';
      //     break;
      //     case 5: value.status = 'Gợi ý';
      //     break;
          
      // }
      let list = value.map((x,index) =>
            <tr key={index+1}>
              <th scope="row">{index}</th>
              <td>{x.title}</td>
              <td>{x.created_at}</td>
              <td>Gợi ý</td>
              <td><i className="far fa-eye"></i></td>
              <td><i className="far fa-edit"></i></td>
              <td><i className="far fa-trash-alt"></i></td>
            </tr>
      )
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
             {list}
            </tbody>
          </table>
        )
    }
}
export default TableBordered;