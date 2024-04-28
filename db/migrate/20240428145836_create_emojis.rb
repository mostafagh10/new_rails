class CreateEmojis < ActiveRecord::Migration[7.1]
  def change
    unless table_exists?(:emojis)
    create_table :emojis do |t|
      t.string :type

      t.timestamps
      end
    end
  end
end
