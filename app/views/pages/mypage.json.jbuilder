json.set! :user do
  json.id @user.id
  json.name @user.name
  json.icon @user.icon
  json.role @user.role
  year = 0
  month = 0
  date = 0
  json.set! :drops do
    i = 1
    json.array! @user.posts do |d|
      if (year == d.year && month == d.month && date == d.date) then
        i=i+1
      else

      year = d.year
      month = d.month
      date = d.date

      json.count i
      json.year d.year
      json.month d.month
      json.date d.date
        json.is_new true
      end
    end
    i = 1
  end
end
json.set! :achievements do
  json.array! @achi do |achi|
    json.extract! achi, :id, :type, :achieved, :icon, :secret, :description
  end
end
json.set! :posts do
  json.array! @posts do |post|
    json.extract! post, :id
    json.set! :comments do
      json.array! post.comments do |com|
        json.aa com.id
      end
    end
    json.approved post.approved
    json.mine post.id == @current_user.id
  end
end

