require 'test/unit'
require 'json'
require 'net/http'
require_relative 'github.rb'

class TestEvent < Test::Unit::TestCase

  def setup
    @github = Github.new()
  end

  def test_list_organizations()
    organizations = @github.list_organizations("lucachaves")
    assert_equal(2, organizations.count)

    expected = {
      ifpb: "https://github.com/ifpb",
      sidegroup: "https://github.com/sidegroup"
    }
    assert_equal(expected, organizations)
  end

  def test_list_repositories()
    repositories = @github.list_repositories("ifpb")
    assert_equal(13, repositories.count)

    expected = {
      :dafrad=>"https://github.com/ifpb/dafrad",
      :"dafrad-20161"=>"https://github.com/ifpb/dafrad-20161",
      :"dafrad-20162"=>"https://github.com/ifpb/dafrad-20162",
      :dw=>"https://github.com/ifpb/dw",
      :"dw-20161"=>"https://github.com/ifpb/dw-20161",
      :"dw-20162"=>"https://github.com/ifpb/dw-20162",
      :jaguaribetech=>"https://github.com/ifpb/jaguaribetech",
      :lm=>"https://github.com/ifpb/lm",
      :"lm-20162"=>"https://github.com/ifpb/lm-20162",
      :ls=>"https://github.com/ifpb/ls",
      :"ls-20161"=>"https://github.com/ifpb/ls-20161",
      :"ls-20162"=>"https://github.com/ifpb/ls-20162",
      :"projeto-estagio"=>"https://github.com/ifpb/projeto-estagio"
    }
    assert_equal(expected, repositories)
  end

end
