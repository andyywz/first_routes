class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone, :user_id

  belongs_to :user
end
