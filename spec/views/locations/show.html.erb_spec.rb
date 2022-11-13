require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
    assign(:location, Location.create!(
      location: "Location"
    ))
    assign(:location_logic, LocationsLogic.new(
      location: "Chicago, IL"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
  end
end
