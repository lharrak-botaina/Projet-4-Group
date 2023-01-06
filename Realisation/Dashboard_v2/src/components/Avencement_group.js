import React, { Component } from 'react'
import ProgressBar from 'react-bootstrap/ProgressBar';

export class Avencement_group extends Component {
    constructor(props){
        super(props)
    }
  render() {
    return (
      <div>GroupAv
         <div>
                <ProgressBar now={this.props.data} label={`${this.props.data}%`}/>
            </div>
      </div>
    )
  }
}

export default Avencement_group