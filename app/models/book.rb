class Book < ActiveRecord::Base

  validates :book_title,  :presence => true,
                          :length => {maximum: 2000}

  validates :book_author,  :presence => true,
                           :length => {maximum: 1000}

  validates :book_code,  :presence => true,
                         :length => {maximum: 100}

  validates :book_publisher,  :presence => true,
                              :length => {maximum: 256}

  validates :book_public_year,  :presence => true,
                                :length => {maximum: 38}

  validates :book_price,  :presence => true,
                          :length => {maximum: 10}

  validates :book_receipt_date,  :presence => true

  belongs_to :library

end
