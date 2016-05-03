class PostsController < InheritedResources::Base

  def create
    @post = Post.new(post_params) do |post|
      post.user = current_user
    end
    if @post.save
      redirect_to root_path
    else
      redirect_to root_path, notice: @post.errors.full_messages.first
    end
  end

  private

    def post_params
      params.require(:post).permit(:attachment, :content, :user_id)
    end
end

