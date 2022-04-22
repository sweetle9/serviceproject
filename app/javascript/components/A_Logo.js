import React from "react"
import PropTypes from "prop-types"
import Hash from '../../../public/images/H.svg'
class A_Logo extends React.Component {
  render () {
    return (
      <a href="/" className='logo'>
        <div className="logo-line1"></div>
        <p>ART</p>
        <div className='Hash'>
        <img src={Hash} />
        </div>
        <p>ISTORY</p>
        <div className="logo-line1"></div>
      </a>
    );
  }
}

export default A_Logo
