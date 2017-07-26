class Showtime < ApplicationRecord
  belongs_to :movie

  scope :at_day, -> (date) { where("date(time) = ?", date ) } 
end
