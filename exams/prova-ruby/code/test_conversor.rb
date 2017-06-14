require 'minitest/autorun'
require_relative 'uai'

class TestConversor < Minitest::Test

  def test_list_teachers

    assert_equal '41 42', 'AB'.str2hex
    assert_equal '41 42 43', 'ABC'.str2hex
    assert_equal 'AB', '41 42'.hex2str
    assert_equal 'ABC', '41 42 43'.hex2str


    assert_equal '01000001 01000010', 'AB'.str2hex
    assert_equal '01000001 01000010 01000011', 'ABC'.str2hex
    assert_equal 'AB', '41 42'.hex2str
    assert_equal 'ABC', '41 42 43'.hex2str

  end

end
