class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :piece_id, null: false
      t.string :caption
      t.string :img, null: false

      t.timestamps
    end
  end
end
