class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :board_id
      t.string :name

      t.timestamps

    end
  end
end
