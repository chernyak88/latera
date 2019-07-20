class Issue < ActiveRecord::Base

  validates :date_of_issue,  :presence => true

  validates :date_of_return,  :presence => true

  belongs_to :subscriber

  belongs_to :book

end
