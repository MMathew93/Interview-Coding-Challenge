class Note < ApplicationRecord
  belongs_to :user
  validates :title, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 1000 }
end
