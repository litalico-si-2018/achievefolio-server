class Api::PagesController < ApplicationController
	def mypage
    render json: {
      "user": [
        {
          "name" => "aa",
          "id" => 1
        },
        {
          "name" => "bb",
          "id" => 2
        }
      ],
    }
	end
end
