class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment.user_id = current_user
        @comment = @article.comments.create(comment_params)
        
        redirect_to article_path(@article)
    end
    
    private
    def comment_params
        params.require(:comment).permit(:body)
    end
end
