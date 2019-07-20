class Library < ActiveRecord::Base

  validates :lib_num,  :presence => true,
                       :length => {maximum: 100}

  validates :lib_name,  :presence => true,
                        :length => {maximum: 1000}

  validates :lib_address,  :presence => true,
                           :length => {maximum: 500}


  has_many :subscribers

  has_many :books

  has_many :workers

end
