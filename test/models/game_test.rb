require 'test_helper'

class GameTest < ActiveSupport::TestCase

  def setup
    @user = User.create(username:"Bob",email:"bob@example.com")
    @game = @user.games.build( name: "Chicken Parm",
                      summary: "Best Ever Oh Yeah!",
                      description: "Heat Oil, Add Onions, Tomat sauce, etc")
  end

  test "game should be valid" do
    assert @game.valid?
  end
  
  test "user_id should be present" do
    @game.user_id = nil
    assert_not @game.valid?
  end
  
  test "name should be present" do
    @game.name = " "
    assert_not @game.valid?
  end
  
  test "name length should not be too long" do
    @game.name = "a" * 101
    assert_not @game.valid?
  end
  
  test "name length should not be too short" do
    @game.name = "aaaa"
    assert_not @game.valid?
  end
  
  test "summary should be present" do
    @game.summary = " "
    assert_not @game.valid?
  end
  
  test "summary length should not be too long" do
    @game.summary = "a" * 151
    assert_not @game.valid?
  end
  
  test "summary length should not be too short" do
    @game.summary = "a" * 9
    assert_not @game.valid?
  end
  
  test "description should be present" do
    @game.description = " "
    assert_not @game.valid?
  end
  
  test "description length should not be too long" do
     @game.description = "a" * 501
    assert_not @game.valid?
  end
  
  test "description length should not be too short" do
     @game.description = "a" * 19
    assert_not @game.valid?
  end

end