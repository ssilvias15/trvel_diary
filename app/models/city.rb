class City < ApplicationRecord
  has_many :reviews
  has_attached_file :picture, styles: { validate_media_type: false, medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"

  #validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  #validates_attachment_file_name :picture, :matches => [/png\Z/, /jpg\Z/, /gif\Z/]
  do_not_validate_attachment_file_type :picture
end
