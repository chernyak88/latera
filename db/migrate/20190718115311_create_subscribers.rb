class CreateSubscribers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribers do |t|
      t.integer :sub_ticket
      t.string :sub_surname
      t.string :sub_name
      t.string :sub_patronymic
      t.string :sub_address
      t.bigint :sub_phone
      t.integer :library_id

      t.timestamps
    end
  end
end
