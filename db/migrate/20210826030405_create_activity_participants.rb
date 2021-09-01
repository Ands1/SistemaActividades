class CreateActivityParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :activity_participants do |t|
      t.string :participation_type
      t.decimal :contribution
      t.timestamps
    end
      
      add_reference :activity_participants, :users, foreign_key: true
      add_reference :activity_participants, :activities, foreign_key: true
      #add_index :activity_participants, :users,  unique: true
      

  end
end
