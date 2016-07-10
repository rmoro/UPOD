# An image can belong to many {ArticleImageBlock} so that images can be reused throughout
# articles. The uploader used is {SirTrevorImageUploader}.
# @see ArticleImageBlock
#
# == Schema Information
#
# Table name: images
#
#  body             :string(255)          primary key
#   - represents the image
#
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Image < ActiveRecord::Base
  has_many :article_image_blocks
  mount_uploader :body, SirTrevorImageUploader
end
