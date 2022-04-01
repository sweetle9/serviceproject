import React from "react"
import PropTypes from "prop-types"
import O_PostPart from "./O_PostPart.js"
class O_AllPosts extends React.Component {
  render () {
    return (
      <div className='AllPostiks'>
        <div className="firstblock">
        {this.props.posts.slice(0,3).map(post => (
           <O_PostPart post={post}/>
        ))}
        </div>
        <div className="secondblock">
        {this.props.posts.slice(3,6).map(post => (
           <O_PostPart post={post}/>
        ))}
        </div>
        <div className="thirdblock">
        {this.props.posts.slice(6,9).map(post => (
           <O_PostPart post={post}/>
        ))}
        </div>
        <div className="fourthdblock">
        {this.props.posts.slice(9,12).map(post => (
           <O_PostPart post={post}/>
        ))}
        </div>
        <div className="fifthdblock">
        {this.props.posts.slice(12,16).map(post => (
           <O_PostPart post={post}/>
        ))}
        </div>
      </div>
    );
  }
}

O_AllPosts.propTypes = {
  posts: PropTypes.array
};

export default O_AllPosts
