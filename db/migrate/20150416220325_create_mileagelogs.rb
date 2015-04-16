class CreateMileagelogs < ActiveRecord::Migration
  def change
    create_table :mileagelogs do |t|
      t.decimal :starting_mile
      t.decimal :ending_mile
      t.decimal :rate
      t.decimal :total_miles
      t.references :workorder, index: true

      t.timestamps
    end
  end
end
