class BooksController < ApplicationController
    def new
    	@book = Book.new
    	render("users/show")
    end

    def create
    	book = Book.new(book_params)
    	if  book.save
    		flash[:notice] = "Book was successfully created."
    	    redirect_to user_path(user.id)
    	else
    		render("users/show")
    	end
    end
    def index
    end
    def show
    end
    def update
    end

    private
    def book_params
    	params.require(:book).permit(:title, :body)
    end
end
