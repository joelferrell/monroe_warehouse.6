class CreateTimelogs < ActiveRecord::Migration
  def change
    create_table :timelogs do |t|
      t.decimal :rate
      t.decimal :hours_worked
      t.text :nature_work
      t.datetime :date
      t.references :workorder, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
