class CreateWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :workers do |t|
      t.string :worker_surname
      t.string :worker_name
      t.string :worker_patronymic
      t.date :worker_birth_date
      t.date :worker_employment_date
      t.string :worker_position
      t.string :worker_education
      t.integer :library_id

      t.timestamps
    end
  end
end
