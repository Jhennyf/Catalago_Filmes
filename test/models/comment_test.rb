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

require "test_helper"

class CommentTest < ActiveSupport::TestCase
  setup do
    @movie = movies(:filme_acao)
    @user = users(:joao)
  end

  test "should be valid with valid attributes" do
    comment = Comment.new(text: "Ótimo filme!", movie: @movie, user: @user)
    assert comment.valid?
    assert comment.save!
  end

  test "should not be valid without text" do
    comment = Comment.new(movie: @movie, user: @user)
    assert_not comment.valid?
    assert_includes comment.errors[:text], "can't be blank"
  end

  test "should require a movie" do
    comment = Comment.new(text: "Sem filme", user: @user)
    assert_not comment.valid?
    assert_includes comment.errors[:movie], "must exist"
  end

  test "should allow user to be nil (anonymous comment)" do
    comment = Comment.new(text: "Comentário anônimo", movie: @movie)
    assert comment.valid?
  end

  test "can have anonymous_name" do
    comment = Comment.new(text: "Comentário anônimo", movie: @movie, anonymous_name: "test")
    assert comment.valid?
    assert_equal "test", comment.anonymous_name
  end
end
