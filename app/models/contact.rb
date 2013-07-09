class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone, :user_id

  validates :name, :presence => true
  validates :user_id, :presence => true

  belongs_to :user
  has_one :favorite
end