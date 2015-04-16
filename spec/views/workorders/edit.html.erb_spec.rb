require 'rails_helper'

RSpec.describe "workorders/edit", type: :view do
  before(:each) do
    @workorder = assign(:workorder, Workorder.create!(
      :wo_number => 1,
      :requestor => "MyString",
      :location => "MyString",
      :repair_facility => "MyString",
      :repair_type => "MyString",
      :summary => "MyText",
      :percent_complete => 1,
      :item => nil,
      :priority => "MyString"
    ))
  end

  it "renders the edit workorder form" do
    render

    assert_select "form[action=?][method=?]", workorder_path(@workorder), "post" do

      assert_select "input#workorder_wo_number[name=?]", "workorder[wo_number]"

      assert_select "input#workorder_requestor[name=?]", "workorder[requestor]"

      assert_select "input#workorder_location[name=?]", "workorder[location]"

      assert_select "input#workorder_repair_facility[name=?]", "workorder[repair_facility]"

      assert_select "input#workorder_repair_type[name=?]", "workorder[repair_type]"

      assert_select "textarea#workorder_summary[name=?]", "workorder[summary]"

      assert_select "input#workorder_percent_complete[name=?]", "workorder[percent_complete]"

      assert_select "input#workorder_item_id[name=?]", "workorder[item_id]"

      assert_select "input#workorder_priority[name=?]", "workorder[priority]"
    end
  end
end
