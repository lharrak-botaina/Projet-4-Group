import React, { Component } from "react";
import axios from "axios";
import Avencement_student from "./AvencementStudent";
import Avencement_brief from "./AvencementBrief";
import Avencement_group  from './AvencementGroup';


export default class Selector extends Component {
  constructor() {
    super();
     this.state = { years : [], groupdata : '',studentCount : '15', valueSelect: '',brief_affectations : [],briefs_advencement : ['1','2','3'],group_advencement : '80'};
  }

getYeardata = () => {
    axios.get("http://localhost:8000/api/group").then((res) => {
      this.setState({years : res.data});
    });};

selectGroupid = (e) => {
    axios.get('http://localhost:8000/api/group/'+ e.target.value).then((res) => {
      this.setState({
        logo : res.data.group.Logo,
        groupdata: res.data.group,
        studentCount: res.data.studentCount,
        briefs_advencement : res.data.briefs,
        group_advencement : res.data.group_av,
        brief_affectations : res.data.briefs
      });
    });
  };

componentDidMount() {this.getYeardata()}
  render() {
    let studentprogress = <Avencement_student data={this.state.brief_affectations}/>;
    return (
      <div>
        <div className="row">
          <div className="col-md-4">
            <select onChange={this.selectGroupid} placeholder="Année" id="input" class="form-select">
              <option><i class="fa-regular fa-calendar"></i>Année</option>
              {this.state.years.map((item) => (<option value={item.id}>{item.Annee_scolaire}</option>))}
            </select>
          </div>
          <div className="row info">
            <div className="col-md-4">
              <img src={this.state.logo} alt={this.state.logo}  width="120" height="130"></img>
          <br></br>
              <form action="/target" class="dropzone"></form>
            </div>
            <div className="col-md-6">
              <h5><i class="fa-solid fa-users-line"></i> {this.state.studentCount} Stagiaires dans le groupe "{this.state.groupdata.Nom_groupe}" :</h5>
            </div>
            <div className="col-md-4"></div>
          </div>
        </div>
        <div className="row">
            <div className="col-md-6">
                <Avencement_group data={this.state.group_advencement}/>
                <Avencement_brief data={this.state.briefs_advencement} />
            </div>
            <div className="col-md-6">
              {studentprogress}
            </div>
        </div>
      </div>
    );
  }
}