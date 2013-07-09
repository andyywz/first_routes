class Favorite < ActiveRecord::Base
  attr_accessible :contact_id

  validates :contact_id, :presence => true, :uniqueness => true

  belongs_to :contact
  has_one :user, :through => :contacts
end
