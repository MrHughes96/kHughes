class TvReview < ApplicationRecord
belongs_to :profile
belongs_to :product
validates :author, presence: true
validates :rating, presence: true
validates :content,presence: true
validates :date, presence: true
end
