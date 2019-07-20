class Subscriber < ActiveRecord::Base

  validates :sub_ticket,  :presence => true,
                          :length => {maximum: 38}

  validates :sub_surname,  :presence => true,
                           :length => {maximum: 100}

  validates :sub_name,  :presence => true,
                        :length => {maximum: 100}

  validates :sub_patronymic,  :presence => true,
                          :length => {maximum: 100}

  validates :sub_address,  :presence => true,
                           :length => {maximum: 1000}

  validates :sub_phone,  :presence => true,
                         :length => {maximum: 38}

  belongs_to :library

  has_many :issues

end
