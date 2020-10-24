class BlogsController < ApplicationController
    def new
    end

    def index
    end

    def create
        @blogs = Blogpost.new(blog_params)
        # @blog = Blogpost.new(params[:blog])
        @blogs.save
        redirect_to welcome_index_path
    end

    def show
        @blogs = Blogpost.find(params[:id])
    end

    private
    def blog_params
        params.require(:blog).permit(:title, :text)
    end
end
