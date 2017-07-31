class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string  :name,         null: false
      t.text    :description,  null: false
      t.string  :address
      t.string  :tags
      
      t.timestamps
    end
  end
end
