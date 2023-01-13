import React, { Component } from "react";
import  ProgressBar  from "react-bootstrap/ProgressBar";
import 'bootstrap/dist/css/bootstrap.min.css';


export default class Avenvement_group extends Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            <div>
                <p>Avencement group </p>
                <ProgressBar now={this.props.data} label={`${this.props.data}%`}/>
            </div>
        )
    }
}