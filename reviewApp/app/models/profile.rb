class Profile < ApplicationRecord
	#belongs_to :user
	has_attached_file :userimg
	validates_attachment :userimg, content_type:{content_type:["image/jpg","image/jpeg","image/png"]},size:[less_than: 2.megabyte]
end

