class Api::V1::StickersController < Api::V1::BaseController
  before_action :authenticate_user, only: [:create, :destroy, :update]

  def index 
    respond_with Sticker.all 
  end 
  
  def create 
    respond_with :api, :v1, Sticker.create(sticker_params) 
  end 
  
  def destroy 
    respond_with Sticker.destroy(params[:id]) 
  end 

  def update 
    sticker = Sticker.find(params["id"]) 
    sticker.update_attributes(sticker_params) 
    respond_with sticker, json: sticker 
  end 
  
  private 
  def sticker_params 
    params.require(:sticker).permit(:id, :user_id, :name, :description, :quantity) 
  end
end
