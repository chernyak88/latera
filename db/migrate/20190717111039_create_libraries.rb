class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.string :lib_num
      t.string :lib_name
      t.string :lib_address

      t.timestamps
    end
  end
end
