json.extract! faq, :id, :question, :answer, :uuid, :created_at, :updated_at
json.url faq_url(faq, format: :json)
