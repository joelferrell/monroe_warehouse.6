class CreatePartsWorkorders < ActiveRecord::Migration
  def change
    create_table :parts_workorders do |t|
      t.belongs_to :part, index: true
      t.belongs_to :workorder, index: true
    end
  end
end
