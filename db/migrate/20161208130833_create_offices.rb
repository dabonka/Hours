class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.belongs_to :client, index: true
      t.string :name, null: false, default: ""
      t.string :country, null: false, default: ""
      t.string :town, null: false, default: ""
      t.string :postindex, null: false, default: ""
      t.string :address, null: false, default: ""
      t.text :note, default: ""
      t.timestamps null: false
    end
  end
end
