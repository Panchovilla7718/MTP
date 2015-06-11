require 'test_helper'

class OpeningTest < ActiveSupport::TestCase
  def setup
    @supervisor = Supervisor.create(name: "Seth Contreras", email: "sethmcontreras@gmail.com", plant: "East Plant")
    @opening = @supervisor.openings.build(position: "wing cutter", replacing: "Seth Contreras", shift: "first shift", workschedule: "Work schedule", status: "new")
  end
  
  
  test "Opening should be valid" do
    assert @opening.valid?
  end
  
  test "Supervisor id should be present" do
    @opening.supervisor_id = nil
    assert_not @opening.valid?
  end
  
  test "Position should be present" do
    @opening.position = " "
    assert_not @opening.valid?
  end
  
  test "Replacing worker should be present" do
    @opening.replacing = " "
    assert_not @opening.valid?
  end
  
  test "Shift should be present" do
    @opening.shift = " "
    assert_not @opening.valid?
  end
  
  test "Work schedule should be present" do
    @opening.workschedule = " "
    assert_not @opening.valid?
  end
  
  test "Status should be present" do
    @opening.status = " "
    assert_not @opening.valid?
  end
  
  
end