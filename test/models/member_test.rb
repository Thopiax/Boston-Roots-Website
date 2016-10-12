require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @member = Member.new( name: "Example User",
                          bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          position: "CEO",
                          path: "test")
  end

  test "should be valid" do
    assert @member.valid?
  end

  test "member should be unique" do
    duplicate_member = @member.dup
    @member.save
    assert_not duplicate_member.valid?
  end


end
