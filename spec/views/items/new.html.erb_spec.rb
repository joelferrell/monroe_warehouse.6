require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :model => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_model[name=?]", "item[model]"

      assert_select "textarea#item_description[name=?]", "item[description]"
    end
  end
end
