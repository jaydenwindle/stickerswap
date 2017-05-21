class Api::V1::SwapRequestsController < Api::V1::BaseController
  def index 
    respond_with SwapRequest.all 
  end 
 
  def create 
    respond_with :api, :v1, SwapRequest.create(swap_request_params) 
  end 
 
  def destroy 
    respond_with SwapRequest.destroy(params[:id]) 
  end 

  def update 
    swap = SwapRequest.find(params["id"]) 
    swap.update_attributes(swap_request_params) 
    respond_with swap, json: swap 
  end 
 
  private 
  def swap_request_params 
    params.require(:sticker).permit(:id, :requester_id, :requestee_id, :requester_sticker_id, :requestee_sticker_id) 
  end
end
