json.set! :posts do
  json.array! @posts do |post|
    json.extract! post, :id, :body
  end
end
