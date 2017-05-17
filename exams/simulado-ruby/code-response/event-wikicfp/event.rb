require 'csv'

class Event

  def initialize(filename)
    @events = CSV.read(filename, { headers: true, col_sep: ";" })
  end

  def list_deadlines()

  end

  def list_cities()
    @events
        .map{|row| row[" Where"].strip}
        .uniq
        .sort
  end

  def find_by_deadline(end_date, start_date=nil)

  end

  def find_by_city(city)

  end

end
