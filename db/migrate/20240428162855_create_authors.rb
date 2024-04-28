class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
    unless table_exists?(:authors)
    create_table :authors do |t|
      t.string :name

      t.timestamps
    end
    end
  end
end
