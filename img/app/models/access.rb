class Access < ActiveRecord::Base
  belongs_to :image_id
  belongs_to :user_id
end
