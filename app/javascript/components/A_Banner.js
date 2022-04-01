import React from "react"
import PropTypes from "prop-types"
import Banner from '../../../public/images/banner.jpg'


class A_Banner extends React.Component {
  render (src) {
    return (
      <div className='banner_warp'>
        <img src={Banner} />
        <h2>ARTISTRY - ИНСТРУМЕНТЫ <br/> ПОДГОТОВКИ К ИСТОРИИ</h2>
        <h3>архив - карточки - темы </h3>
      </div>
    );
  }
}

export default A_Banner