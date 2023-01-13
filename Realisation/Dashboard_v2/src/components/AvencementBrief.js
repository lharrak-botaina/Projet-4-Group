import React, { Component } from 'react'
import ProgressBar from 'react-bootstrap/ProgressBar';

export class Avencement_brief extends Component {
    constructor(props){
        super(props)
        // see selection
        console.log(props.data)
    }

render() {
    return (
        <div class="shadow-lg p-3 mb-5 bg-body rounded">
            <h4><i class="fa-solid fa-file-circle-check"></i> Etat d'avancement des Briefs :</h4>      
        <div>
    {this.props.data.map(item => (<><br></br>
    <i class="fa-solid fa-paperclip"></i>
    <span>{item?.Nom_du_Brief}</span>
    <ProgressBar now={'50'} label={`${50}%`}/></>) )}
    </div>
    </div>
    )
  }
}

export default Avencement_brief