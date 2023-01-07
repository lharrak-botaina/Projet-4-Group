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
        let studentAvs = this.state.studentAvs
        let students_avs = []
        for(var i in studentAvs){
            let studentAv = studentAvs[i]
            if(studentAv.brief == valueSelect){
                studentAv = studentAvs[i]
                students_avs.push(studentAv)
            }
        }
        this.setState({
            students_av : students_avs
        })
    }
    getData = ()=>{
        axios.get('http://localhost:8000/api/studentAv')
        .then((res=>{
            this.setState({
                studentAvs : res.data.arr
            })
        }))
    }
    componentDidMount() {
        this.getData()
      }

  render() {
    return (
<div class="shadow-lg p-3 mb-5 bg-body rounded">

      <h4><i class="fa-solid fa-user"></i>Etat d'avancement des Apprenants par Brief :</h4>
      <div>
    <select onChange={this.onChange} class="form-select"  placeholder="Brief" id="input">
      <option>Brief</option>{this.props.data.map((item) => (<option value={item?.id}>{item?.Nom_du_brief}</option>))}
    </select>
    {this.state.students_av.map(item =>(<><p>{item.student_name}</p><ProgressBar now={item.av} label={`${item.av}%`}/></>))}
     </div>
      
      
</div>
    )
  }
}

export default Avencement_student