require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "creating a Book" do
    visit books_url
    click_on "New Book"

    fill_in "Book author", with: @book.book_author
    fill_in "Book code", with: @book.book_code
    fill_in "Book price", with: @book.book_price
    fill_in "Book public year", with: @book.book_public_year
    fill_in "Book publisher", with: @book.book_publisher
    fill_in "Book receipt date", with: @book.book_receipt_date
    fill_in "Book title", with: @book.book_title
    fill_in "Library", with: @book.library_id
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "updating a Book" do
    visit books_url
    click_on "Edit", match: :first

    fill_in "Book author", with: @book.book_author
    fill_in "Book code", with: @book.book_code
    fill_in "Book price", with: @book.book_price
    fill_in "Book public year", with: @book.book_public_year
    fill_in "Book publisher", with: @book.book_publisher
    fill_in "Book receipt date", with: @book.book_receipt_date
    fill_in "Book title", with: @book.book_title
    fill_in "Library", with: @book.library_id
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "destroying a Book" do
    visit books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book was successfully destroyed"
  end
end
