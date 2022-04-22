import React from "react"
import PropTypes from "prop-types"
import SearchIcon from '../../../public/images/search_icon.svg'
class A_Search extends React.Component {
  constructor(props) {
      super(props);
      this.state = {
        search: ""
      };
      this.updateSearch = this.updateSearch.bind(this);
    }
  updateSearch(e) {
    this.setState({search: e.target.value});
  }
  render () {
    return (
      <div>
        <form className ='searchfield' action="/posts" acceptCharset="UTF-8" method="get">
        <input className='sch'
          type="text"
          name="starts_with"
          value={this.state.search}
          onChange={this.updateSearch}
        />
        <button className="actions_sbcr"
                type="submit"
                value="Search"
          ><img src={SearchIcon} />
          </button>


        </form>
      </div>
    );
  }
}

export default A_Search
