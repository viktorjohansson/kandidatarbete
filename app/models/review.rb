class Review < ActiveRecord::Base
  belongs_to :sender
  belongs_to :sender_company
  belongs_to :recipient
  belongs_to :recipient_company
  belongs_to :post
end
