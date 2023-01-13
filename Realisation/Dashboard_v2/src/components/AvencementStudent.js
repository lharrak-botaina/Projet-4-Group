import axios from 'axios'
import React, { Component } from 'react'
import ProgressBar from 'react-bootstrap/ProgressBar';

export default class Avencement_student extends Component {
    constructor(props){
        super(props)
        this.state = {
            selectValue : '',
            studentAdvencements : [], studentsData : [], studentState : [],
        }
    }
    onChange =(e)=>
    {
        let selectValue = e.target.value
        console.log(selectValue)
        let studentAdvencements = this.state.studentAdvencements
        for(var i in studentAdvencements){let studentAdvencements = studentAdvencements[i]}
        this.setState({studentsData : studentAdvencements})
    }

    getStudentdata =()=>
    {
        axios.get('http://localhost:8000/api/studentAv')
        .then((res =>{this.setState({studentsData : res.data.arr})
        console.log(res.data.arr)
        }))
    }

// Double check (update.).
componentDidMount(){this.getStudentdata()}
componentDidUpdate(){this.getStudentdata()}

  render() {
    // default values
    var item = {av : '10'}
    var Studentprogress = <ProgressBar now={item.av} label={`${item.av}%`}/>;
return (
<div class="border-bottom shadow-lg p-3 mb-5 bg-body rounded">
      <h4><i class="fa-solid fa-user"></i> Etat d'avancement des Apprenants par Brief :</h4>
<div>
    <select onChange={this.onChange} class="form-select"  placeholder="Brief" id="input">
      <option>Brief</option>{this.props.data.map((item) =>(<option value={item?.id}>{item?.Nom_du_Brief}</option>))}
    </select>
<br></br>
    {this.state.studentsData.map(item =>(<><p><i class="fa-regular fa-user"></i> {item.student_name} :
    <ProgressBar now={item.av} label={`${item.av}%`}/> </p></>))}
</div>   
</div>)}
}