class Tweet < ApplicationRecord
  validates_length_of :description, maximum: 140
  has_many :replies, dependent: :destroy
  has_many :likes, dependent: :destroy
end
