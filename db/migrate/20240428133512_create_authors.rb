class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
  unless table_exists?(:authors)
    create_table :authors do |t|
      # Add your table columns here
      t.string :name
      # Add more columns as needed

      t.timestamps
    end
  end
  end
end
