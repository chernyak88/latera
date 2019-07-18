json.extract! book, :id, :book_title, :book_author, :book_code, :book_publisher, :book_public_year, :book_price, :book_receipt_date, :library_id, :created_at, :updated_at
json.url book_url(book, format: :json)
