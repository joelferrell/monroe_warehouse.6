require 'rails_helper'

RSpec.describe "workorders/show", type: :view do
  before(:each) do
    @workorder = assign(:workorder, Workorder.create!(
      :wo_number => 1,
      :requestor => "Requestor",
      :location => "Location",
      :repair_facility => "Repair Facility",
      :repair_type => "Repair Type",
      :summary => "MyText",
      :percent_complete => 2,
      :item => nil,
      :priority => "Priority"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Requestor/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Repair Facility/)
    expect(rendered).to match(/Repair Type/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Priority/)
  end
end
