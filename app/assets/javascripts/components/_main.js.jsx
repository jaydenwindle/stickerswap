

var NavBar = React.createClass({
  render(){
    return(
      <div className = "text-center">
          <h1> Hi </h1>
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
