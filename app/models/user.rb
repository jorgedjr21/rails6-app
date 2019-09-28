class User < ApplicationRecord
  validates :email, presence: true, allow_blank: false
  validates :name, presence: true, allow_blank: false
end
