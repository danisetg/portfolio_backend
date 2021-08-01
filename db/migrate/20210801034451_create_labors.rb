class CreateLabors < ActiveRecord::Migration[6.1]
  def change
    create_table :labors do |t|
      t.string :institute
      t.string :position
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :current
      t.integer :type

      t.timestamps
    end
  end
end
