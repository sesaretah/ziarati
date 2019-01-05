json.extract! company, :id, :name, :phone_number, :email, :telegram_channel, :instagram_page, :address, :about_us, :uuid, :created_at, :updated_at
json.url company_url(company, format: :json)
