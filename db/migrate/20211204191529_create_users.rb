class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.references :account, null: false, foreign_key: true
      t.text :email
      t.text :name
      t.text :password_digest

      t.timestamps
    end
  end
end
