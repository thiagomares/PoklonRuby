json.extract! usuario, :id, :customerID, :customer_name, :data_nascimento, :primary_email_address, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
