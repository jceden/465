class Url < ActiveRecord::Base
validates :address, presence: true
validates :comment, presence: true
  belongs_to :doi
end
