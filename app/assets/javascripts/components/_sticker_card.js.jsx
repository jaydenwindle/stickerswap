var StickerCard = React.createClass({ 
  render() { 
    return ( 
      <div className="card" style={{maxWidth: 100 + "%", marginBottom: 30}}>
        <img className="card-img-top" src="https://placehold.it/300x250" alt="Card image cap" style={{objectFit: "cover"}}/>
        <div className="card-block">
          <h4 className="card-title">{this.props.sticker.name}</h4>
          <p className="card-text">{this.props.sticker.description}</p>
        </div>
        <div className="card-footer">
          <a href="#" className="btn btn-primary">Swap!</a>
        </div>
      </div>
    );
  }  
});
