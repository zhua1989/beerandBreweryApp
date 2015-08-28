class Beer < ActiveRecord::Base
  has_many :tastings
  has_many :comments
  has_many :users, through: :tastings
end
