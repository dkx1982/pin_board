class Movie < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_attached_file :image_movie, styles: { medium: "400x600＃" }
  validates_attachment_content_type :image_movie, content_type: /\Aimage\/.*\z/

end
