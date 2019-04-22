class PhoneReview < ApplicationRecord
belongs_to :product
belongs_to :profile, optional: true
validates :author, presence: true
validates :rating, presence: true
validates :content,presence: true
validates :date, presence: true
end
