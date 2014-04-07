json.array!(@feedback_items) do |feedback_item|
  json.extract! feedback_item, :id, :title, :description, :theme, :start
  json.url feedback_item_url(feedback_item, format: :json)
end
