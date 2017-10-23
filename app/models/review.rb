class Review < ApplicationRecord
  belongs_to :objective

  validates :question, presence: true, length: { minimum: 5 }
  validates :comment, presence: true, length: {minimum: 10}
  validates :confidence_level, numericality: { only_integer: true }
end
