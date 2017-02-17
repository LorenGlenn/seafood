class ReviewsController < ApplicationController
  def new
    @dish = Dish.find(params[:dish_id])
    @review = @dish.reviews.new
  end

  def create
    @dish = Dish.find(params[:dish_id])
    @review = @dish.reviews.new(review_params)
    if @review.dish.save
      flash[:notice] = "Review Saved!"
      redirect_to dish_path(@review.dish)
    else
      flash[:notice] = "Review not Saved!"
      render :new
    end
  end

  def edit
      @dish = Dish.find(params[:dish_id])
      @review = Review.find(params[:id])
      render :edit
    end

  def update
    @dish = Dish.find(params[:dish_id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "Review Updated!"
      redirect_to dish_path(@review.dish)
    else
      render :edit
    end
  end

  def destroy
    @dish = Dish.find(params[:dish_id])
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "Review Deleted!"
    redirect_to dish_path(@review.dish)
  end

private
  def review_params
    params.require(:review).permit(:content)
  end
end
