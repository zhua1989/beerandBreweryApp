class User < ActiveRecord::Base
  has_many :tastings
  has_many :comments
  has_many :beers, through: :tastings
end