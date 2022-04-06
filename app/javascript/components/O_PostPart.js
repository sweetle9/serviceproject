import React from "react"
import PropTypes from "prop-types"
import A_IconAddL from "./A_IconAddL.js"
class O_PostPart extends React.Component {
  render () {
    return (
      <div className='postcontainer'>
        <a className="postlink" href={`/posts/${this.props.post.id}`}>
        <div className="imgcard">
        <img className="fit-image"src={this.props.post.image.url}alt='Image'/>
        </div> 
        <div className='M_Painting-caption'>
        <div className='info'>
        <h3>{this.props.post.name}</h3>
        <p>{this.props.post.author}, {this.props.post.title}</p>
        </div>
          <div className='batoncard'>
            <A_IconAddL />
          </div>
        </div>
        </a>  
      </div>
    );
  }
}

export default O_PostPart
