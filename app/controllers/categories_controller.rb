class CategoriesController < ApplicationController
  
  def create
    @category = Category.new(category_params)
    if @category.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to new_movie_path, notice: "Categoria criada!" }
      end
    else
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to new_movie_path, alert: "Erro ao criar categoria." }
      end
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
