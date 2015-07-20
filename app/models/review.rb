class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  validates :comment, presence: true
  validates :rating, presence: true
end
