json.extract! data_source, :id, :type, :title, :ref_number, :url, :file_path, :created_at, :updated_at
json.url data_source_url(data_source, format: :json)
