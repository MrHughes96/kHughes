class TvReview < ApplicationRecord
validates :author, presence: true
validates :rating, presence: true
validates :content,presence: true
validates :date, presence: true
end
