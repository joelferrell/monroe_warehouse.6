require 'rails_helper'

RSpec.describe "workorders/index", type: :view do
  before(:each) do
    assign(:workorders, [
      Workorder.create!(
        :wo_number => 1,
        :requestor => "Requestor",
        :location => "Location",
        :repair_facility => "Repair Facility",
        :repair_type => "Repair Type",
        :summary => "MyText",
        :percent_complete => 2,
        :item => nil,
        :priority => "Priority"
      ),
      Workorder.create!(
        :wo_number => 1,
        :requestor => "Requestor",
        :location => "Location",
        :repair_facility => "Repair Facility",
        :repair_type => "Repair Type",
        :summary => "MyText",
        :percent_complete => 2,
        :item => nil,
        :priority => "Priority"
      )
    ])
  end

  it "renders a list of workorders" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Requestor".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Repair Facility".to_s, :count => 2
    assert_select "tr>td", :text => "Repair Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Priority".to_s, :count => 2
  end
end
