class Book < ActiveRecord::Base
has_many :reviews
  belongs_to :author
  has_many :book_genres
  has_many :genres, :through=> :book_genres
has_attached_file :book_image, :styles => {:original=>"1140x560#", :medium => "320x220#", :thumb => "100x100#" }
validates_attachment :book_image, :presence => true,
                     :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                     :size => { :in => 0..10.megabytes }
end

