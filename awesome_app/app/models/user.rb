class User < ActiveRecord::Base

  has_secure_password


  has_many :tastings
  has_many :comments
  has_many :beers, through: :tastings

  validates :name, uniqueness: true



end