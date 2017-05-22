var Header = React.createClass({ 
  render() { 
    return ( 
      <nav className="navbar navbar-toggleable-md navbar-inverse bg-inverse" style={{marginBottom: 30}}>
        <div className="container">
          <button className="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span className="navbar-toggler-icon"></span>
          </button>
          <a className="navbar-brand" href="#">StickerSwap</a>

          <div className="collapse navbar-collapse" id="navbarSupportedContent">
            <ul className="navbar-nav ml-auto">
            </ul>
            <button type="button" className="btn btn-primary btn-inline" data-toggle="modal" data-target="#loginModal">
              Sign Up/Log In 
            </button>
          </div>
        </div>
      </nav>
    )  
  }  
});
