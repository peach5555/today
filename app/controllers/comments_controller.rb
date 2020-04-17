class CommentsController < ApplicationController
     #createメソッドを使いインスタンス作成しデータベースに保存
    def create
        @comment = Comment.create(text: comment_params[:text], article_id: comment_params[:article_id],user_id: current_user.id)
        redirect_to "/articles/#{@comment.article.id}" #コメント(@comment)と結びつくツイートの詳細画面に遷移する
    end
    
    private #このメソッドでコントローラー以外ではcomment_paramsメソッドを呼び出せない
    def comment_params
        params.permit(:text, :article_id) #permitメソッドで受け取るparamsのキーを指定している
    end
    
end
