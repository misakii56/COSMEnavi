class Public::CommentsController < ApplicationController
  
  def create
     comment = Coment.new(comment_params)
     comment.save
     redirect_to cosmetic_review_path
  end
  
  def edit
  end

  def destroy
  end
  
   private
  def comment_params
    params.require(:comment).permit(:user_id, :review_id, :comment)
  end
end
