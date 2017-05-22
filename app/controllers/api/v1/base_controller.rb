class Api::V1::BaseController < ApplicationController 
  include Knock::Authenticable
  before_action :authenticate_user
  respond_to :json
end
