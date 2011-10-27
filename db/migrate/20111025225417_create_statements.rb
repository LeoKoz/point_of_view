class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.string :content
			t.integer :theme_id
			t.integer :user_id
      t.timestamps
    end
  end
end
