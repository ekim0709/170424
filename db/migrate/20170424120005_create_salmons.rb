class CreateSalmons < ActiveRecord::Migration
  def change
    create_table :salmons do |t|
      t.string :name
      t.text :reason
      t.timestamps null: false
    end
  end
end
