class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true
      t.boolean :admin, default: false
      t.string :password_digest
      t.string :remember_digest
      t.string :access_token, unique: true
      t.string :reset_digest
      t.datetime :reset_sent_at

      t.timestamps null: false
    end
    add_index :users, :email
    add_index :users, :access_token
  end
end
