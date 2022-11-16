class ReviewsController < ApplicationController
  before_action :set_book
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET books/1/reviews
  def index
    @reviews = @book.reviews
  end

  # GET books/1/reviews/1
  def show
  end

  # GET books/1/reviews/new
  def new
    @review = @book.reviews.build
  end

  # GET books/1/reviews/1/edit
  def edit
  end

  # POST books/1/reviews
  def create
    @review = @book.reviews.build(review_params)

    if @review.save
      redirect_to([@review.book, @review], notice: 'Review was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT books/1/reviews/1
  def update
    if @review.update_attributes(review_params)
      redirect_to([@review.book, @review], notice: 'Review was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE books/1/reviews/1
  def destroy
    @review.destroy

    redirect_to book_reviews_url(@book)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:book_id])
    end

    def set_review
      @review = @book.reviews.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def review_params
      params.require(:review).permit(:text, :score, :book_id)
    end
end
