class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :likable, polymorphic: true, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :likes, [:likable_id, :likable_type, :user_id], unique: true, name: "unique_user_likes"
  end
end
