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
		@book = Book.new(book_params)

		# 通常 -------------------------
		# book.save
		# flash[:notice] = "Book was successfully created."
		# redirect_to book_path(book.id)
			# redirect_to book_path(book.id), notice: "Book was successfully created."
		# ------------------------------

		# エラーメッセージを表示する場合 ---
		if @book.save
			flash[:notice] = "Book was successfully created."
			redirect_to book_path(@book.id)
			# redirect_to book_path(book.id), notice: "Book was successfully created."
		else
			@books = Book.all
			render 'new'
		end
		# ------------------------------
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)
		flash[:notice] = "Book was successfully updated."
		redirect_to book_path
	end

	def destroy
		book = Book.find(params[:id])
		book.destroy
		flash[:notice] = "Book was successfully destroyed."
		redirect_to new_book_path
	end

	private

	def book_params
		params.require(:book).permit(:title, :body)
	end
end
