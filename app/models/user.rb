class User < ApplicationRecord
	has_many :comments
	has_many :posts

  enum role: {admin: 0, general: 1}
end
