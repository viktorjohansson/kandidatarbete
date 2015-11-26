json.array!(@reviews) do |review|
  json.extract! review, :id, :message, :rating, :sender_id, :sender_company_id, :recipient_id, :recipient_company_id, :post_id
  json.url review_url(review, format: :json)
end
