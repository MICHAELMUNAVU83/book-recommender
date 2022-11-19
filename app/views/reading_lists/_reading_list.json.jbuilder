json.extract! reading_list, :id, :book_name, :book_genre, :created_at, :updated_at
json.url reading_list_url(reading_list, format: :json)
