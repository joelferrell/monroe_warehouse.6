class CreateWorkorders < ActiveRecord::Migration
  def change
    create_table :workorders do |t|
      t.integer :wo_number
      t.date :start_date
      t.date :comp_date
      t.date :est_completion
      t.string :requestor
      t.string :location
      t.string :repair_facility
      t.string :repair_type
      t.text :summary
      t.integer :percent_complete
      t.references :item, index: true
      t.string :priority

      t.timestamps
    end
  end
end
