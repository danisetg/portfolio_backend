class CreateBulletpoints < ActiveRecord::Migration[6.1]
  def change
    create_table :bulletpoints do |t|
      t.references :labor, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
