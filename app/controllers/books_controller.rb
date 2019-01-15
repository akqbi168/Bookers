class BooksController < ApplicationController
	def show
		@book = Book.find(params[:id])
	end

	def index
	end

	def new
		# 記事を全件取得
		@books = Book.all
  		@book = Book.new
	end

	def create
		book = Book.new(blog_params)
		book.save
		redirect_to books_path
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		book = Book.find(params[:id])
		book.update(blog_params)
		redirect_to blog_path(blog)
	end

	def destroy
		book = Book.find(params[:id])
		book.destroy
		redirect_to books_path
	end

	private

	def book_params
		params.require(:book).permit(:title, :body)
	end
end
