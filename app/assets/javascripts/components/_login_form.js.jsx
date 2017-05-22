var LoginForm = React.createClass({ 
  getInitialState: function () {
    return { email: '', password: '' };
  },
  handleEmailChange: function(e) {
    this.setState({ email: e.target.value  });
  },
  handlePasswordChange: function(e) {
    this.setState({ password: e.target.value  });
  },
  login(e) {
    e.preventDefault();
    $.ajax({
      type        : "POST",
      url         : "/user_token",
      data        : {"auth": {"email": this.state.email, "password": this.state.password}},
      success     : function (html) {
        console.log(html);
        if(html == 'true') {
          alert("right username And password");
        } else {
          alert("Wrong username And password");
        }
      },
    });
  },
  render() { 
    var csrfToken = $('meta[name=csrf-token]').attr('content');
    return ( 
      <div> 
        <form id="loginForm" onSubmit={this.login}>
          <div className="form-group">
            <label htmlFor="email">Email</label>
            <input type="email" name="email" className="form-control" id="email" onChange={this.handleEmailChange} />
          </div>
          <div className="form-group">
            <label htmlFor="email">Password</label>
            <input type="password" name="password" className="form-control" id="password" onChange={this.handlePasswordChange}/>
          </div>
          <input type='hidden' name='utf8' value='✓' />
          <input type='hidden' name='authenticity_token' value={csrfToken} />
          <button>Log In</button>
        </form>
      </div>  
    )  
  },
});
