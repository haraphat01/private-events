class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :location
      t.datetime :event_date
      t.integer :creator_id

      t.timestamps
    end
  end
end
