class CreateAttends < ActiveRecord::Migration[6.0]
  def change
    create_table :attends do |t|

      t.timestamps
      t.references :subject , nill:false, forgin_key: true
      t.decimal :latitude, nill: false, :precision => 9, :scale => 6
      t.decimal :longitude, nill: false, :precision => 9, :scale => 6
      t.string :student_number, nill: false
      t.string :name, nill: false
      t.string :ip
    end
  end
end
