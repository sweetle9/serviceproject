import React from "react"
import PropTypes from "prop-types"
import A_search from "./A_search.js"
import A_avatar from "./A_avatar.js"


class A_Header extends React.Component {
  render () {


        const renderAuthButton = () => {
            if (this.props.current_user_id == 2) {
              return <a href="/users/sign_in"><div className="signin"></div></a>;
            } else {
              return <A_avatar
                  link = {this.props.current_user.id}
                  avatar = {this.props.current_user.avatar.url}>
                </A_avatar>
            }
          }

    return (
      <div className="header">
        <div className="header_wrap">
          <div className="header_left">

          <div className="left_head">
            <a href="/posts">
              <p>Галлерея</p>
            </a>
          </div>

          <div className="left_head">
            <a href="#">
              <p>Подготовка</p>
            </a>
          </div>

          <div className="left_head">
            <a href="#">
              <p>Статьи</p>
            </a>
          </div>

           <div className="left_head">
            <a href="#">
              <p>Исследования</p>
            </a>
          </div>
         </div>

        <div className="header_right">
          <a href="#">
            <A_search/>
          </a>

          <div className="Account_action">
            {renderAuthButton()}
          </div>

          </div>
        </div>
      </div>
    );
  }
}

export default A_Header
