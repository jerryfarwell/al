class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_date
      t.string :author
      t.integer :duration
      t.text :description
      t.integer :location

      t.timestamps
    end
  end
end
