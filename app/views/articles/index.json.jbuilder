json.array!(@articles) do |article|
  json.extract! article, :id, :title, :players_lvl, :post
  json.url article_url(article, format: :json)
end
