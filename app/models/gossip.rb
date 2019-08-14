class Gossip < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :gossip_to_tags
  has_many :tags, through: :gossip_to_tags

  validates :title, presence: true, length: {in:5..15}
  validates :content, presence: true
end
