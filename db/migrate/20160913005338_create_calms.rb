class CreateCalms < ActiveRecord::Migration[5.0]
  def change
    create_table :calms do |t|
      t.text :content

      t.timestamps
    end
  end
end
