json.extract! gene, :id, :name, :description, :chromosomeNumber, :position, :loalization, :created_at, :updated_at
json.url gene_url(gene, format: :json)
