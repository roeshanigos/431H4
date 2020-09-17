class BooksController < ApplicationController
  def home
    @books = Abook.all
  end

  def add
  end

  def new
    @book = Abook.new
  end

  def create
    @book = Abook.new(params.require(:abook).permit(:title, :author, :genre, :price, :published_date))
    if @book.save
      flash[:notice] = "Book '#{@book.title}' created successfully!"
      redirect_to(root_path)
    else
      render('new')
    end
  end

  def edit
    @book = Abook.find(params[:id])
  end

  def update
    @book = Abook.find(params[:id])
    if @book.update_attributes(params.require(:abook).permit(:title, :author, :genre, :price, :published_date))
      flash[:notice] =  "Book '#{@book.title}' updated successfully!"
      redirect_to(root_path)
    else
      render('edit')
    end
  end

  def show
    @book = Abook.find(params[:id])
  end

  def delete
    @book = Abook.find(params[:id])
  end

  def destroy
    @book = Abook.find(params[:id])
    @book.destroy
    flash[:notice] =  "Book '#{@book.title}' deleted successfully!"
    redirect_to(root_path)
  end

end
