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
#
# Indexes
#
#  index_movies_on_user_id  (user_id)
#

require "test_helper"

class MovieTest < ActiveSupport::TestCase
  setup do
    @acao = movies(:filme_acao)
  end

  test "should be valid with valid attributes" do
    assert @acao.valid?
  end

  test "should create movie with valid attributes" do
    user = users(:joao)
    movie = Movie.new(
      title: "Novo Filme",
      synopsis: "Sinopse do filme.",
      realease_year: 2025,
      duration: 120,
      director: "Diretor X",
      user: user
    )
    assert movie.save
  end

  test "should not create movie with missing attributes" do
    movie = Movie.new
    assert_not movie.save
  end

  test "should require a title" do
    @acao.title = nil
    assert_not @acao.valid?
    assert_includes @acao.errors[:title], "can't be blank"
  end
  test "should have categories" do
    assert @acao.categories.any?
    assert_includes @acao.categories.map(&:name), "Ação"
  end

  test "should have comments" do
    assert @acao.comments.is_a?(ActiveRecord::Associations::CollectionProxy)
  end
end
