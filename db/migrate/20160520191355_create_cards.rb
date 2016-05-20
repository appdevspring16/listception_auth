class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :list_id
      t.string :name
      t.text :description

      t.timestamps

    end
  end
end
