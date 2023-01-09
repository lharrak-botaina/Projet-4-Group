import axios from 'axios'
import React, { Component } from 'react'
import ProgressBar from 'react-bootstrap/ProgressBar';

export class Avencement_student extends Component {
    constructor(props){
        super(props)
        this.state = {
            valueSelect : '',
            studentAvs : [],
            students_av : [],
        }
    }
    onChange = (e)=>{
        let valueSelect = e.target.value
        console.log(valueSelect)
        let studentAvs = this.state.studentAvs
        for(var i in studentAvs){
            let studentAv = studentAvs[i]
            console.log(studentAv)
        
        }
        this.setState({
            students_av : studentAvs
        })
        
    
    }
    getData = ()=>{
        axios.get('http://localhost:8000/api/studentAv')
        .then((res=>{
            this.setState({
                studentAvs : res.data.arr
            })
            console.log(res.data.arr)
        }))
    }
    componentDidMount() {
        this.getData()
      }

  render() {
    return (
<div class="border-bottom shadow-lg p-3 mb-5 bg-body rounded">
      <h4> <i class="fa-solid fa-user"></i> Etat d'avancement des Apprenants par Brief :</h4>

<div>

    <select onChange={this.onChange} class="form-select"  placeholder="Brief" id="input">
      <option>Brief</option>{this.props.data.map((item) =>(<option value={item?.id}>{item?.Nom_du_Brief}</option>))}
    </select>
<br></br>
    {this.state.students_av.map(item =>(
    <><p> <i class="fa-regular fa-user"></i>{item.student_name} 
    <ProgressBar now={item.av} label={`${item.av}%`}/></p>
    
    </>))}
     </div>
      
       
</div>
    )
  }
}

export default Avencement_student