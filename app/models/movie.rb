# == Schema Information
#
# Table name: movies
#
#  id            :integer          not null, primary key
#  title         :string
#  synopsis      :text
#  realease_year :integer
#  duration      :integer
#  director      :string
#  user_id       :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  image_url     :string
#
# Indexes
#
#  index_movies_on_user_id  (user_id)
#

class Movie < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :categories

  validates :title, presence: :true
  validates :synopsis, presence: :true
  validates :realease_year, presence: :true
  validates :duration, presence: :true
  validates :director, presence: :true
end
