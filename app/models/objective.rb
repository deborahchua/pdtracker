class Objective < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: {minimum: 10}
  validates :deadline, presence: true

end
