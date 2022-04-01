import React from "react"
import PropTypes from "prop-types"

const A_avatar = ({
  avatar,
  link
}) => {
    return (
      <a href={`/users/${link}`}>
        <div className="avatar_round">
          <img className={avatar} src={`${avatar}`}/>
        </div>
      </a> 
    );
  }

export default A_avatar
