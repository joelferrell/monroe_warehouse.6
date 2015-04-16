FactoryGirl.define do
  factory :workorder do
    wo_number 1
start_date "2015-04-16"
comp_date "2015-04-16"
est_completion "2015-04-16"
requestor "MyString"
location "MyString"
repair_facility "MyString"
repair_type "MyString"
summary "MyText"
percent_complete 1
item nil
priority "MyString"
  end

end
