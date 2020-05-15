class UsersController < ApplicationController
    def index
    end
    def show
    	@user = User.where(id: params[:id])
    	@book = Book.new
    	@books =Book.all(params:id)
    	# @books = Book.find(params[:user_id])
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
    	@book = Book.new(book_params)
    	if @book.save
	        flash[:notice] = "Book was successfully created."
    		redirect_to book_path(@book.id)
    	else
    		render("users/show")
    	end
    end

	private
    def book_params
    	params.require(:book).permit(:title, :body)
    end
end
