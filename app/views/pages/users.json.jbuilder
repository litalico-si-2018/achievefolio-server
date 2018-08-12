json.set! :user do
  json.extract! @current_user, :id, :name,, :icon, :role
end

json.set! :users do
  json.array! @users do |user|
    json.extract! user, :id, :name, :icon, :role
  end
end
