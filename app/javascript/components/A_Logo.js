import React from "react"
import PropTypes from "prop-types"
import Logo from '../../../public/images/logo.svg'
class A_Logo extends React.Component {
  render () {
    return (
      <a href="/">
        <div className="logo">
        <img src={Logo} /></div>
      </a>
    );
  }
}

export default A_Logo
