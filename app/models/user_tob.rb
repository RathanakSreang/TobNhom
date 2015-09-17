class UserTob < ActiveRecord::Base
  # :user_id,:tob_id,:role
  enum role: [:normal, :admin, :super]
  
  belongs_to :user
  belongs_to :tob
end
