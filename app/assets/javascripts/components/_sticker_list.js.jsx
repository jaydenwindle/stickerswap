var StickerList = React.createClass({ 
  getInitialState() {
    return {
      stickers: []
    };
  },
  componentDidMount() {
    $.getJSON('/api/v1/stickers.json')
      .then(res => {
        this.setState({stickers: res})
        console.log(this.state.stickers)
      });
  },
  render() { 
    return ( 
      <div className="container">
        <div className="card-deck">
          {this.state.stickers.map(function(object, i){
            return <div className="col-4 d-flex align-items-stretch"><StickerCard sticker={object} key={i} /></div>;
          })}
        </div>
      </div>
    )  
  },
});
