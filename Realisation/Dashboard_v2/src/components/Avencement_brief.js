import React, { Component } from 'react'
import ProgressBar from 'react-bootstrap/ProgressBar';

export class Avencement_brief extends Component {
    constructor(props){
        super(props)
    }



  render() {
    return (
        <div class="shadow-lg p-3 mb-5 bg-body rounded">
            <h4><i class="fa-solid fa-file-circle-check"></i> Etat d'avancement des Briefs :</h4>
            <div>
                {this.props.data.map(item=>(
                    <><span>{item?.brief_name}</span>
                    <ProgressBar  now={item?.brief_av} label={`${item?.brief_av}%`}/>
                    </>
                ))}
            </div>
        </div>
    )
  }
}

export default Avencement_brief