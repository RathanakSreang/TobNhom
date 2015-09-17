class UserContact < ActiveRecord::Base
  # :user_id,:address_id,:phone,:social
  # :address1,:address2,:province,:latitude,:longitude
  belongs_to :user
end
