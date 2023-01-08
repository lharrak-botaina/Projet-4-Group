import React,{Component} from "react";
import axios from "axios";
import Avenvement_group from "./Avenvement_group";


export default class Header extends Component{
    constructor(props){
        super(props);
        this.state={
            years:[],
            group:'',
           
            group_av:''
        };
    }

   getDatayears=()=>{
    axios.get("http://localhost:8000/api/group").then((res)=>{
        this.setState({
            years:res.data
        })
    })
   }

   getData =(e)=>{
    axios.get('http://localhost:8000/api/group/'+e.target.value).then((res)=>{
        this.setState({
            group:res.data.group,
            group_av:res.data.group_av
        })
    })
   }



    componentDidMount() {
        this.getDatayears()
       
      }
       
    
    render(){
        return(
            <div>
               <select onChange={this.getData}  name="" id="input">
                <option value=""> Année</option>
                {this.state.years.map((item,i)=>(
                    <option key={i} value={item.id}>{item.Annee_scolaire}</option>
                    
               ))}
               

               </select>
               <p>{this.state.group.Nom_groupe}</p>
               <Avenvement_group data={this.state.group_av}/>            </div>
        );
    }


}