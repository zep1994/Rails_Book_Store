class BooksController < ApplicationController

    def index 
        @books = Book.all
    end 

    def new 
    end 

    def create 
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
