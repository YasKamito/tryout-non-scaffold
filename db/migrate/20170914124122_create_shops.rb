class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :shopname
      t.string :address

      t.timestamps
    end
  end
end
