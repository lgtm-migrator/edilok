class CreateAlerts < ActiveRecord::Migration[7.0]
  def change
    create_table :alerts do |t|
      t.references :account, null: false, foreign_key: true
      t.references :device, null: false, foreign_key: true
      t.text :name

      t.timestamps
    end
  end
end
