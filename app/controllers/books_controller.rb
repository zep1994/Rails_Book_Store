class BooksController < ApplicationController

    def index 
        @books = Book.all
    end 

    def new 
        @books = Book.new
    end 

    def create 
        @book = Book.new(book_params)
        if @book.save
            redirect_to root_path
        else 
            render 'new'
        end
    end

    def show
    end

    def destroy
    end 

    private 

    def book_params
        require(:books).permit(:title, :description, :author)
    end


end
