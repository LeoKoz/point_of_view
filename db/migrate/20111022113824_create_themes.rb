class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
			t.string :name
      t.string :desc
      t.integer :user_id
			t.integer :board_id
      t.timestamps
    end
  end
end
