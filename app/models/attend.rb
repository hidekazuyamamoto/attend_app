class Attend < ApplicationRecord
  belongs_to :subject
  with_options presence: true do
    validates :latitude
    validates :longitude
    validates :student_number
    validates :name
  end
end
