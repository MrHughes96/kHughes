class Product < ApplicationRecord
	has_many :tvreviews
	has_many :watchreviews
	has_many :phonereviews
end
