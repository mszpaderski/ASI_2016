class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
       
        @comment = @article.comments.create(comment_params)
         @comment.username = session[:user_name]
        
        respond_to do |format|
        if @comment.save
          format.html { redirect_to article_path(@article), notice: 'Komentarz dodany.' }
            format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
    end
    
    private
    def comment_params
        params.require(:comment).permit(:body)
    end
end
