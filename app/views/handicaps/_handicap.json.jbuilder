json.extract! handicap, :id, :description, :user.belongs_to, :created_at, :updated_at
json.url handicap_url(handicap, format: :json)
