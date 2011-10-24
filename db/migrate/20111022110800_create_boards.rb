class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
			t.integer :user_id
      t.timestamps
    end
    add_index :boards, [:user_id, :created_at]
  end
end
