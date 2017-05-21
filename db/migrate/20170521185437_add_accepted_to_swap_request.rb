class AddAcceptedToSwapRequest < ActiveRecord::Migration[5.1]
  def change
    add_column :swap_requests, :accepted, :bool
  end
end
