import React, { Component } from "react";
import axios from "axios";
import Dropzone from "dropzone";
import Avencement_student from "./AvencementStudent";
import Avencement_brief from "./AvencementBrief";
import  Avencement_group  from './AvencementGroup';


export default class Header extends Component {
  constructor(props) {
        super(props);
        this.state = {
        years : [],
        group : '',
        studentCount : '',
        valueSelect: '',
        brief_affs : [],
        briefs_av : [],
        group_av : ''
        };
  }
  getDatayears = () => {
    axios.get("http://localhost:8000/api/group").then((res) => {
      this.setState({
        years : res.data
      });
    });
    
  };

   getData = (e) => {
    axios.get('http://localhost:8000/api/group/'+e.target.value).then((res) => {
      this.setState({
        group: res.data.group,
        studentCount: res.data.studentCount,
        brief_affs : res.data.brief_aff[0],
        briefs_av : res.data.briefs,
        group_av : res.data.group_av
      });
    });
  };

  componentDidMount() {
    this.getDatayears()
    
  }


  render() {
    return (
      <div>
        <div className="row">
          <div className="col-md-4 selectY">
            <select onChange={this.getData} placeholder="année" id="input" class="form-select">
              <option>Année</option>
              {this.state.years.map((item) => (
                <option value={item.id}>{item.Annee_scolaire}</option>
              ))}
            </select>
          </div>

          <div className="row info">
            <div className="col-md-4">
        
              <img src="" alt="Girl in a jacket" width="120" height="130"></img>
          
              <form action="/target" class="dropzone"></form>
            </div>
            <div className="col-md-4 info">
              <h6><i class="fa-solid fa-users-line"></i> {this.state.studentCount} Stagiaires dans le groupe "{this.state.group.Nom_groupe}" :</h6>
            </div>
            <div className="col-md-4"></div>
          </div>
        </div>

        <div className="row">
            <div className="col-md-6">
                <Avencement_group data={this.state.group_av}/>
                <Avencement_brief data={this.state.briefs_av} />
            </div>
            {/*  */}
            <div className="col-md-6">
                <Avencement_student data={this.state.brief_affs}/>
            </div>
        </div>
      </div>
    );
  }
}