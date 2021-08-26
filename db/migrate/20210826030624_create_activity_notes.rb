class CreateActivityNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_notes do |t|
      t.text :comment

      t.timestamps
    end
    add_reference :activity_notes, :users, foreign_key: true
    add_reference :activity_notes, :activities, foreign_key: true
  end
end
