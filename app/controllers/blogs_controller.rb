class BlogsController < ApplicationController
    def index
        @blogs = Blogpost.all
    end

    def new
    end

    def create
        @blog = Blogpost.new(blog_params)
        # @blog = Blogpost.new(params[:blog])
        @blog.save
    end

    def show
        @blog = Blogpost.find(params[:id])
    end

    private
    def blog_params
        params.require(:blog).permit(:title, :text)
    end
end
