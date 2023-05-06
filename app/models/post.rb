# == Schema Information
#
# Table name: posts
#
#  id                :uuid             not null, primary key
#  content           :text
#  description       :string           not null
#  hahas_count       :integer          default(0), not null
#  likes_count       :integer          default(0), not null
#  loves_count       :integer          default(0), not null
#  notion_created_at :date             not null
#  notion_slug       :string
#  notion_updated_at :date             not null
#  published         :boolean          default(FALSE), not null
#  published_date    :date
#  reactions_count   :integer          default(0), not null
#  slug              :string           not null
#  sparkles_count    :integer          default(0), not null
#  tags              :string           default([]), is an Array
#  tils_count        :integer          default(0), not null
#  title             :string           not null
#  wows_count        :integer          default(0), not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  notion_id         :string           not null
#
# Indexes
#
#  index_posts_on_notion_slug  (notion_slug) UNIQUE
#  index_posts_on_published    (published)
#  index_posts_on_slug         (slug) UNIQUE
#  index_posts_on_tags         (tags) USING gin
#
class Post < ApplicationRecord
  extend FriendlyId

  validates :description, presence: true
  validates :notion_created_at, presence: true
  validates :notion_updated_at, presence: true
  validates :title, presence: true
  validates :notion_id, presence: true
  validates :notion_slug, presence: true, uniqueness: true

  has_many :reactions, dependent: :destroy, inverse_of: :post
  has_many :likes, -> { where(kind: :like) }, class_name: 'Reaction'
  has_many :loves, -> { where(kind: :love) }, class_name: 'Reaction'
  has_many :tils, -> { where(kind: :til) }, class_name: 'Reaction'
  has_many :wows, -> { where(kind: :wow) }, class_name: 'Reaction'
  has_many :sparkles, -> { where(kind: :sparkle) }, class_name: 'Reaction'
  has_many :hahas, -> { where(kind: :haha) }, class_name: 'Reaction'

  scope :published, -> { where(published: true) }

  friendly_id :notion_slug, use: :slugged
end
