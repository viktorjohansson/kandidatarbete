class Post < ActiveRecord::Base
  belongs_to :owner
  belongs_to :owner_company
  belongs_to :candidate
  belongs_to :candidate_company
end
