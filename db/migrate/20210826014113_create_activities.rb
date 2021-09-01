class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :total_cost
      t.string :type_activity
      t.datetime :initial_date
      t.datetime :end_date
      t.string :state
      t.timestamps
    end
    

    add_reference :activities, :users, foreign_key: true
  end
end
