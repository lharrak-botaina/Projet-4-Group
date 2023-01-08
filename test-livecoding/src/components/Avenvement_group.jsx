import React, { Component } from "react";
import ProgressBar from 'react-bootstrap/ProgressBar';
import 'bootstrap/dist/css/bootstrap.min.css';

export default class Avenvement_group extends Component{
    constructor(props){
        super(props);
    }

    render(){
        return(
            <div>
                 <h4> <i class="fa-solid fa-user-group"></i> Etat d'avancement du Group :</h4>
                 <ProgressBar variant="warning" now={this.props.data} />
            
        
            </div>
        );
    }
}