class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.date :date_of_issue
      t.date :date_of_return
      t.integer :book_id
      t.integer :subscriber_id

      t.timestamps
    end
  end
end
