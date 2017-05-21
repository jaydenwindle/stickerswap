class CreateSwapRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :swap_requests do |t|
      t.references :requester
      t.references :requestee
      t.references :requester_sticker
      t.references :requestee_sticker

      t.timestamps
    end
  end
end
