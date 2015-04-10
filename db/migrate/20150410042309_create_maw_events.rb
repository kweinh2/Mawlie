class CreateMawEvents < ActiveRecord::Migration
  def change
    create_table :maw_events do |t|
      t.datetime :date
      t.string :where
      t.string :name

      t.timestamps
    end
  end
end
