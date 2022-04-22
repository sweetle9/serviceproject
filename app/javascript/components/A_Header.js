import React from "react"
import PropTypes from "prop-types"
import A_Logo from "./A_Logo.js"
import A_HeaderLines from "./A_HeaderLines.js"

class A_Header extends React.Component {
  render () {
    return (
      <div className='header_mob'>
      <A_HeaderLines />
      <A_Logo />
      </div>
    );
  }
}

export default A_Header
