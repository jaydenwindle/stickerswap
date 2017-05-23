

var NavBar = React.createClass({
  render(){
    return(
      <div className = "text-center">

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
