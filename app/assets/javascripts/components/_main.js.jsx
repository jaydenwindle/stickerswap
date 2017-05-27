

var NavBar = React.createClass({
  render(){
    return(
      <div className = "navbar-wrapper">
      </div>
    )
  }
});

var Main = React.createClass({
  render() {
    return (
      <div>
        <Header/>
        <div className="container">
          <LoginForm />
          <StickerList />
        </div>
      </div>
    )
  }
});
