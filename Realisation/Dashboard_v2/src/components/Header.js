import React, { Component } from "react";
import axios from "axios";
import Dropzone from "dropzone";
import Avencement_student from "./AvencementStudent";
import Avencement_brief from "./AvencementBrief";
import  Avencement_group  from './AvencementGroup';


export default class Header extends Component {
  constructor(props) {
        super(props);
        this.state = 
        {
        years : [],group : '',studentCount : '',
        valueSelect: '',brief_affs : [],
        
        briefs_av : [],group_av : ''
        };
  }
  getYearsdata = () => {
    axios.get("http://localhost:8000/api/group").then((res) => {
      this.setState({
        years : res.data
      });
    });
    
  };

   selectGroupid = (e) => {
    axios.get('http://localhost:8000/api/group/'+e.target.value).then((res) => {
      this.setState({
        group: res.data.group,
        studentCount: res.data.studentCount,
        // brief_affs : res.data.brief_aff[0],
        // add here
        brief_affs : res.data.briefs,
        briefs_av : res.data.briefs,
        group_av : res.data.group_av,
        Logo : res.data.group.Logo
      });
    });
  };

  componentDidMount() {
    this.getYearsdata()
    
  }


  render() {
    return (
      <div>
        <div className="row">
          <div className="col-md-4">
            <select onChange={this.selectGroupid} placeholder="Année" id="input" class="form-select">
              <option>Année</option>
              {this.state.years.map((item) => (
                <option value={item.id}>{item.Annee_scolaire}</option>
              ))}
            </select>
          </div>

          <div className="row info">
            <div className="col-md-4">
        
              <img src={this.state.Logo} alt={this.state.Logo}  width="120" height="130"></img>
          <br></br>
              <form action="/target" class="dropzone"></form>
            </div>
            <div className="col-md-6">
<h5><i class="fa-solid fa-users-line"></i> {this.state.studentCount} Stagiaires dans le groupe "{this.state.group.Nom_groupe}" :
</h5>
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

























