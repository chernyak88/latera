json.extract! subscriber, :id, :sub_ticket, :sub_surname, :sub_name, :sub_patronymic, :sub_address, :sub_phone, :library_id, :created_at, :updated_at
json.url subscriber_url(subscriber, format: :json)
