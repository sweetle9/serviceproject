import React from "react"
import PropTypes from "prop-types"
class A_search extends React.Component {
  render () {
    return (
      <div className="search_wrapper">
        <div className="search_t">
          <p>Поиск</p>
          <div className="search_icon"></div>
        </div>
        <div className="underline"></div>
      </div>
    );
  }
}

export default A_search
