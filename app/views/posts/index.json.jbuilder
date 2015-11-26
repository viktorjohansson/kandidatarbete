json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :owner_id, :owner_company_id, :candidate_id, :candidate_company_id, :status
  json.url post_url(post, format: :json)
end
