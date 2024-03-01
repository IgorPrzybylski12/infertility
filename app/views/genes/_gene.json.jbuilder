json.extract! gene, :id, :name, :description, :chromosome_number, :position, :localization, :created_at, :updated_at
json.url gene_url(gene, format: :json)
