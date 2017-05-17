require 'test/unit'
require_relative 'github.rb'

class TestEvent < Test::Unit::TestCase

  def setup
    @github = Github.new()
  end

  # def test_list_organizations()
  #   organizations = @github.list_organizations("lucachaves")
  #   assert_equal(2, organizations.count)
  #
  #   expected = {
  #     ifpb: "https://github.com/ifpb",
  #     sidegroup: "https://github.com/sidegroup"
  #   }
  #   assert_equal(expected, organizations)
  # end

  # def test_list_repositories()
  #   repositories = @github.list_repositories("ifpb")
  #   assert_equal(9, repositories.count)
  #
  #   expected = {
  #     :dafrad=>"https://github.com/ifpb/dafrad",
  #     :"dafrad-20161"=>"https://github.com/ifpb/dafrad-20161",
  #     :dw=>"https://github.com/ifpb/dw",
  #     :"dw-20161"=>"https://github.com/ifpb/dw-20161",
  #     :jaguaribetech=>"https://github.com/ifpb/jaguaribetech",
  #     :lm=>"https://github.com/ifpb/lm",
  #     :ls=>"https://github.com/ifpb/ls",
  #     :"ls-20161"=>"https://github.com/ifpb/ls-20161",
  #     :"projeto-estagio"=>"https://github.com/ifpb/projeto-estagio"
  #   }
  #   assert_equal(expected, repositories)
  # end

end
