import React, { Component } from 'react'

class Search extends Component {
    constructor(props){
        super(props)
        
    }

    render(){
        return(
            <div>
                <h1>
                    <form>
                        <div className="form-group">
                            <label>Search for a Currency</label><br/>
                            <input onChange={this.props.handleChange} autoComplete="off" type="text" name="name" placeholder="EX: Bitcoin, Litecoin, Ethereum..." value={this.props.name} className ="field"/>
                        </div>
                    </form>
                </h1>
            </div>
        )
    }
}
export default Search