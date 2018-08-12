class Achievement < ApplicationRecord
  enum status: ["string_count", "sequence_post", "daily_post_count",
                "click_date", "comment_count"]
end
