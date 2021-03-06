class BooksController < ApplicationController
    before_action :book, only: [:show, :edit, :update, :destroy]

    def index 
        @books = Book.all.order("created_at DESC")
    end 

    def new 
        @book = Book.new
    end 

    def create 
        @book = Book.new(book_params)
        if @book.save
            redirect_to root_path
        else 
            render 'new'
        end
    end

    def edit 
    end 

    def update 
        if @book.update 
            redirect_to book_path(@book)
        else 
            render 'new'
        end
    end

    def show
    end

    def destroy
        if @book.destroy 
            redirect_to root_path 
        else 
            redirect_to book_path(@book)
        end
    end 

    private 

    def book_params
        params.require(:book).permit(:title, :description, :author)
    end

    def book 
        @book = Book.find(params[:id])
    end


end
