json.extract! gene, :id, :name, :description, :chromosome_number, :position, :loalization, :created_at, :updated_at
json.url gene_url(gene, format: :json)
