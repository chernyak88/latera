json.extract! worker, :id, :worker_surname, :worker_name, :worker_patronymic, :worker_birth_date, :worker_employment_date, :worker_position, :worker_education, :library_id, :created_at, :updated_at
json.url worker_url(worker, format: :json)
