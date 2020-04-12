class ArticlesController < ApplicationController
    
    def index
            @articles=Article.includes( :user).order("created_at DESC")
    end
    
    def new
    end
  
    def create
        Article.create(title: article_params[:title], image: article_params[:image], text: article_params[:text], user_id: current_user.id)
    end
  
    def random
        @random = Article.order("RAND()").limit(5)
    end  
    
    
    private
    def article_params
        params.permit(:title, :image, :text)
    end
  
    def move_to_index
        redirect_to action: :index unless user_signed_in?
    end    
end
