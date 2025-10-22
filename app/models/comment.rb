# == Schema Information
#
# Table name: comments
#
#  id             :integer          not null, primary key
#  text           :text
#  anonymous_name :string
#  movie_id       :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_comments_on_movie_id  (movie_id)
#  index_comments_on_user_id   (user_id)
#

class Comment < ApplicationRecord
  belongs_to :movie
  belongs_to :user, optional: true

  validates :text, presence: :true
end
