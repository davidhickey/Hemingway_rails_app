module IdeasHelper

    def idea_params
      params.require(:idea).permit(:author, :title, :truth, :body, :bev_and_food, :bar_id, :creator_id )
  end

  end
