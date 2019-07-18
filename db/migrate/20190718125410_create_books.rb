class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :book_title
      t.string :book_author
      t.string :book_code
      t.string :book_publisher
      t.integer :book_public_year
      t.integer :book_price
      t.date :book_receipt_date
      t.integer :library_id

      t.timestamps
    end
  end
end
