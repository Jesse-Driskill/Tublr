class Api::PostsController < ApplicationController
    def show
        render json: Post.find(params[:id])
      end
    
      def index
        render json: Post.all
      end
    
      def create
        @post = Post.new(post_params)
        if @post.save
          render json: @post
        else
          render json: @post.errors.full_messages, status: 422
        end
      end
    
      def update
        @post = Post.find(params[:id])
        if post.update(post_params)
          render json: @post
        else
          render json: @post.errors.full_messages, status: 422
        end
      end
    
      def destroy
        @post = Post.find(params[:id])
        @post.destroy
        render json: @post
      end
    
      private
      def post_params
        params.require(:post).permit(:title, :body, :done)
      end
end
