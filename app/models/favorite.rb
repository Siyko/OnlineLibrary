class Favorite < ActiveRecord::Base
  has_many :users
  has_many :books
end
