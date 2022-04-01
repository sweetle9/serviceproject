import React from "react"
import PropTypes from "prop-types"
import O_PostPartMob from "./O_PostPartMob.js"
class O_AllPostsMob extends React.Component {
  render () {
    return (
      <div className='AllPostiks_mob'>
        <div className="firstblock">
        {this.props.posts.slice(0,8).map(post => (
           <O_PostPart post={post}/>
        ))}
        </div>
        <div className="secondblock">
        {this.props.posts.slice(8,9).map(post => (
           <O_PostPart post={post}/>
        ))}
        </div>
        </div>
      </div>
    );
  }
}

O_AllPosts.propTypes = {
  posts: PropTypes.array
};

export default O_AllPostsMob