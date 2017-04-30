require 'test_helper'

class BondTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
   @bond = Bond.new(follower_id: users(:gary).id,
                    followed_id: users(:kush).id)
  end
  
  test "should be valid" do
    assert @bond.valid?
  end
  
  test "shoud require a follower id" do
    @relationship.follower_id = nil
    assert_not @relationship.valid?
  end
  
  test "should require a followed_id" do
    @relationship.followed_id = nil
    assert_not @relationship.valid?
  end
  
  
end
