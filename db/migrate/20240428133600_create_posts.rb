class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    unless table_exists?(:posts)
      create_table :posts do |t|
      t.string :title
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
  end
end
