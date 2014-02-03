class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :piece_id, null: false
      t.string :caption

      t.timestamps
    end
  end
end
