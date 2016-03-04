class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :description
      t.date :day
      t.string :day_half

      t.timestamps null: false
    end
  end
end
