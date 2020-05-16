class UsersController < ApplicationController
    def about
    end
    def new
    	@book = Book.new
    	render("books/new")
    end
    def index
    end
    def show
    	@book = Book.new
    	@books = current_user.books
    	@user = User.find(params[:id])
    end
    def edit
    	# @user = User.where(id: params[:id])
    	# if @user.save
    	# 	flash[:notice] = "Book was successfully created."
     #    	redirect_to user_path(@user.id)
     #    else
     #    	render("users/edit")
     #    end
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

	private
    def book_params
    	params.require(:book).permit(:title, :body)
    end
end
