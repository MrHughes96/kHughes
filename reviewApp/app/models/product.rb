class Product < ApplicationRecord
	has_many :tvreviews
	has_many :watchreviews
	has_many :phonereviews 
	has_attached_file :prodimg
	validates_attachment :prodimg, content_type:{content_type:["image/jpg","image/jpeg","image/png"]},size:[less_than: 5.megabyte]
end
