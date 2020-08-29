class PostComment < ApplicationRecord
	belongs_to :user #user:post_comment => 1:N の関係
  	belongs_to :post_image
end
