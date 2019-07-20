class Worker < ActiveRecord::Base

  validates :worker_surname,  :presence => true,
                              :length => {maximum: 100}

  validates :worker_name,  :presence => true,
                           :length => {maximum: 100}

  validates :worker_patronymic,  :presence => true,
                                 :length => {maximum: 100}

  validates :worker_birth_date,  :presence => true

  validates :worker_employment_date,  :presence => true

  validates :worker_position,  :presence => true,
                               :length => {maximum: 256}

  validates :worker_education,  :presence => true,
                                :length => {maximum: 100}

  belongs_to :library

end
