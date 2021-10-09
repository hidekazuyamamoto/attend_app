class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|

      t.timestamps
      t.references :user, nill: false, forgin_key: true
      t.string :subject, nill: false
      t.integer :timetable_id , null: false
      t.integer :week_id , null: false
    end
  end
end
