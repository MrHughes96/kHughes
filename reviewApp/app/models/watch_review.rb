class WatchReview < ApplicationRecord
belongs_to :profile, optional: true
belongs_to :product, optional: true
validates :author, presence: true
validates :rating, presence: true
validates :content,presence: true
validates :date, presence: true
end
