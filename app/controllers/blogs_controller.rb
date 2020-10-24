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

    def edit
        @blog = Blogpost.find(params[:id])
    end

    def show
        @blog = Blogpost.find(params[:id])
    end

    def update
        @blog = Blogpost.find(params[:id])

        if @blog.update(blog_params)
            redirect_to blog_path(@blog)
        else
            render 'edit'
        end
    end


    private
    def blog_params
        params.require(:blog).permit(:title, :text)
    end
end
