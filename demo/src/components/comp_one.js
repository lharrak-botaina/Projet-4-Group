import React from "react";
// import { ProgressBar } from "react-bootstrap";
import ProgressBar from 'react-bootstrap/ProgressBar'
import Comptwo from "./comp_two";

export default class Compone extends React.Component {
constructor() {
    super()

  this.state = {
    progress : "",
    year : ""
};
    
}


componentDidMount () {
    this.setState({progress:566})
}


render() {
    return(

        <div>
            <h1>Demo {this.state.progress} </h1>
            <Comptwo year= {this.state.progress} />
        </div>
    );
}


}