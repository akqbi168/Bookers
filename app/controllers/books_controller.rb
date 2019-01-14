class BooksController < ApplicationController
	def show
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
	end

	private

	def book_params
		params.require(:book).permit(:title, :body)
	end
end
