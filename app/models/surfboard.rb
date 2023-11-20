class Surfboard < ApplicationRecord
  validates :gender, presence: true
  validates :weight, presence: true
  validates :size, presence: true
  validates :objective, presence: true
  validates :waves, presence: true
  validates :temperature, presence: true
end
