class CreateAttends < ActiveRecord::Migration[6.0]
  def change
    create_table :attends do |t|

      t.timestamps
      t.decimal :latitude, nill: false
      t.decimal :longitude, nill: false
      t.string :student_number, nill: false
      t.string :name, nill: false
    end
  end
end
