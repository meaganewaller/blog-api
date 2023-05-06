# == Schema Information
#
# Table name: reactions
#
#  id         :uuid             not null, primary key
#  kind       :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :uuid             not null
#
# Indexes
#
#  index_reactions_on_post_id  (post_id)
#
# Foreign Keys
#
#  fk_rails_...  (post_id => posts.id)
#
class Reaction < ApplicationRecord
  belongs_to :post
  enum kind: { like: 0, love: 1, til: 2, wow: 3, sparkle: 4, haha: 5 }

  counter_culture :post
  counter_culture :post, column_name: proc { |reaction| "#{reaction[:kind]}s_count" }

  validates :kind, presence: true
end
