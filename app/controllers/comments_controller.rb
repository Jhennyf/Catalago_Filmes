class CommentsController < ApplicationController
  before_action :set_movie

  def new
    @comment = @movie.comments.build
  end

  def create
    @comment = @movie.comments.build(comment_params)

    if user_signed_in?
      @comment.user = current_user
    end

    respond_to do |format|
      if @comment.save
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def comment_params
    params.require(:comment).permit(:text, :anonymous_name)
  end
end
