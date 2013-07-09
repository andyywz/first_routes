class User < ActiveRecord::Base
  attr_accessible :email, :name

  validates :name, :presence => true
  validates :email, :uniqueness => true, :allow_nil => true

  has_many :contacts
  has_many :favorites, :through => :contacts
end
