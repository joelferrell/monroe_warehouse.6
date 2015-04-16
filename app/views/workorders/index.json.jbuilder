json.array!(@workorders) do |workorder|
  json.extract! workorder, :id, :wo_number, :start_date, :comp_date, :est_completion, :requestor, :location, :repair_facility, :repair_type, :summary, :percent_complete, :item_id, :priority
  json.url workorder_url(workorder, format: :json)
end
