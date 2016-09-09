class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.integer :rating
      t.integer :num_of_ratings

      t.timestamps
    end
  end
end
