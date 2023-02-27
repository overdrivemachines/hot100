class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :likable, polymorphic: true, null: false

      t.timestamps
    end

    add_index :likes, [:likable_id, :likable_type], unique: true, name: "unique_likes"
  end
end
