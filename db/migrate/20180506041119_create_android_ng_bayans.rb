class CreateAndroidNgBayans < ActiveRecord::Migration[5.2]
  def change
    create_table :android_ng_bayans do |t|
      t.string :Name
      t.string :Brand
      t.string :Year_Released
      t.string :Mpixel
      t.string :Internal_Storage
      t.string :Size_of_Screen
      t.string :Operating_System
      t.integer :Stock

      t.timestamps
    end
  end
end
