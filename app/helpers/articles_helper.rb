module ArticlesHelper

  def article_params
    params.require(:article).permit(:author, :title, :truth, :body, :bev_and_food)
end

end
