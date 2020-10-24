class BlogsController < ApplicationController
    def index
        @blogs = Blogpost.all
    end

    def new
        @blog = Blogpost.new
    end

    def 

    def create
        @blog = Blogpost.new(blog_params)
        if @blog.save
            redirect_to blog_path(@blog)
        else
            render 'new'
        # @blog = Blogpost.new(params[:blog])
        # @blog.save
        end
    end

    def show
        @blog = Blogpost.find(params[:id])
    end

    private
    def blog_params
        params.require(:blog).permit(:title, :text)
    end
end
