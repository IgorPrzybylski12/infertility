json.extract! data_source, :id, :type, :title, :refNumber, :url, :file_path, :created_at, :updated_at
json.url data_source_url(data_source, format: :json)
