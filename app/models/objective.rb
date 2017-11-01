require 'csv'

class Objective < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: {minimum: 10}
  validates :deadline, presence: true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |objective|
        csv << objective.attributes.values
      end
    end
  end
end
