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
require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
