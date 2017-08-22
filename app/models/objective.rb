class Objective < ApplicationRecord
  validates :title, presence: { message: "Title needs to be filled in"}, length: { minimum: 5 }
  validates :description, presence: true, length: {minimum: 10}
  validates :deadline, presence: true

end
