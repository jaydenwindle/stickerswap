class SwapRequest < ApplicationRecord
  belongs_to :requester, class_name: "User", foreign_key: :requester_id
  belongs_to :requestee, class_name: "User", foreign_key: :requestee_id
  belongs_to :requester_sticker, class_name: "Sticker", foreign_key: :requester_sticker_id
  belongs_to :requestee_sticker, class_name: "Sticker", foreign_key: :requestee_sticker_id
end
