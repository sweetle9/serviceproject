import React from "react"
import PropTypes from "prop-types"
class A_HeaderMenu extends React.Component {
  render () {

    return (
      <div className="header_menu">
        <div className="header_wrap">
            <a href="/posts">
              <p>Галлерея</p>
            </a>
            <a href="#">
              <p>Подготовка</p>
            </a>
            <a href="#">
              <p>Статьи</p>
            </a>
            <a href="#">
              <p>Исследования</p>
            </a>
         </div>
        </div>
    );
  }
}

export default A_HeaderMenu
