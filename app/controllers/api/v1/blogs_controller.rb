module Api
  module V1
    class BlogsController < ApplicationController
      before_action :set_user
      before_action :set_blog, except: [:index]
    
      # GET /blogs
      def index
        @blogs = @user.blogs
    
        render json: @blogs
      end
    
      # GET /blogs/1
      def show
        render json: @blog
      end
    
      # POST /blogs
      def create
        @blog = Blog.new(blog_params)
    
        if @blog.save
          render json: @blog, status: :created, location: @blog
        else
          render json: @blog.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /blogs/1
      def update
        if @blog.update(blog_params)
          render json: @blog
        else
          render json: @blog.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /blogs/1
      def destroy
        @blog.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_blog
          @blog = Blog.find(params[:id])
        end

        def set_user
          @user = User.find(params[:user_id])
        end
    
        # Only allow a trusted parameter "white list" through.
        def blog_params
          params.require(:blog).permit(:date, :topic, :link, :notes)
        end
    end
  end
end


