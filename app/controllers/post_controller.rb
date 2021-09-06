class PostController < ApplicationController
  def create
    message = params[:msg]
    user_id = params[:user_id]
    if message != nil and user_id != nil
      a = Integer(user_id) rescue false
      if !a
        @postResult = "USER ID NOT AN INTEGER"
      else
        x = User.find(a) rescue false
        if !x
          @postResult = "INVALID USER ID"
        else
          Post.create(msg:message,user_id:a)
          @postResult = "POST CREATED"
        end
      end
    else
      @postResult = "MISSING USER ID AND/OR MESSAGE"
    end
  end
end
