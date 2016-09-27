class BookmarksController < ApplicationController
	before_action :find_bookmark, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
	def index
		@bookmarks = Bookmark.all
	end

	def show
	end

	def new
		@bookmark = current_user.bookmarks.build
	end

	def create
		@bookmark = current_user.bookmarks.build(bookmark_params)
		if @bookmark.save
			redirect_to @bookmark
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		@bookmark.update_attributes(bookmark_params)
		redirect_to @bookmark
	end

	def destroy
		@bookmark.destroy
		redirect_to root_path
	end

	private

	def find_bookmark
		@bookmark = Bookmark.find(params[:id])
	end

	def bookmark_params
		params.require(:bookmark).permit(:title, :url, :description, :favorite)
	end
end
