require 'test/unit'
require_relative 'event.rb'

class TestEvent < Test::Unit::TestCase

  def setup
    @event = Event.new("events-wikicfp.csv")
  end

  # def test_list_dealines()
  #   dates = @event.list_deadlines()
  #   assert_equal(6, dates.count)
  #
  #   expected = ["May 20, 2016", "May 19, 2016", "May 15, 2016", "May 13, 2016", "May 12, 2016", "May 10, 2016"]
  #   assert_equal(expected, dates)
  # end

  # def test_list_cities()
  #   cities = @event.list_cities()
  #   assert_equal(13, cities.count)
  #
  #   expected = [
  #     "Allerton Park, IL, USA",
  #     "Atlanta, Georgia, USA",
  #     "Cardiff, UK",
  #     "Chongqing, China",
  #     "Edinburgh, Scotland",
  #     "London, UK",
  #     "Montreal, Canada",
  #     "Paris, France",
  #     "Philadelphia, PA USA",
  #     "Ploiesti, Romania",
  #     "Porto, Portugal",
  #     "Prague, Czech Republic",
  #     "Vienna, Austria"
  #   ]
  #   assert_equal(expected, cities)
  # end

  # def test_get_events_by_deadline()
  #   events = @event.find_by_deadline("May 20, 2016")
  #   assert_equal(3, events.count)
  #   assert_equal(["ECAI 2016", "IEEE DSAA'2016", "RW-BPMS 2016"], events)
  #
  #   events = @event.find_by_deadline("May 19, 2016")
  #   assert_equal(1, events.count)
  #   assert_equal(["PLoP 2016"], events)
  #
  #   events = @event.find_by_deadline("May 20, 2016", "May 19, 2016")
  #   assert_equal(4, events.count)
  #   assert_equal(["ECAI 2016", "IEEE DSAA'2016", "PLoP 2016", "RW-BPMS 2016"], events)
  # end

  # def test_get_events_by_city()
  #   events = @event.find_by_city("Porto, Portugal")
  #   assert_equal(5, events.count)
  #   assert_equal(["IC3K 2016", "IJCCI 2016", "KDIR 2016", "KEOD 2016", "KMIS 2016"], events)
  #
  #   events = @event.find_by_city("Paris, France")
  #   assert_equal(1, events.count)
  #   assert_equal(["PEMWN 2016"], events)
  # end

end
