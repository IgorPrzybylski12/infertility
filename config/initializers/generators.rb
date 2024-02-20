Rails.application.generators do |g|
    g.orm :active_record, primary_key_type: :EnbaleUuid
end