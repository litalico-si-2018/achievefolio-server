json.set! :user do
  json.id @user.id
  json.name @user.name
  json.icon @user.icon
  json.role @user.role
end
json.set! :drops do
  json.array! @drops do |d|
    json.extract! d, :count, :year, :month, :date
  end
end
json.set! :achievements do
  json.array! @achi do |achi|
    json.extract! achi, :id, :status, :achieved, :icon, :secret, :description
  end
end
json.set! :posts do
  json.array! @posts do |post|
    json.extract! post, :id
    json.approved post.approved
    json.mine post.id == @current_user.id
  end
end

