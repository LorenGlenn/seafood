class DishesController < ApplicationController
  def index
  @dishes = Dish.all
end

def show
  @dish = Dish.find(params[:id])
end

def new
  @dish = Dish.new
end

def create
  @dish = Dish.new(dish_params)
  if @dish.save
    flash[:notice] = "Dish succesfully added!"
    redirect_to dishes_path
  else
    flash[:notice] = "Dish not added!"
    render :new
  end
end

def edit
  @dish = Dish.find(params[:id])
end

def update
  @dish = Dish.find(params[:id])
  if @dish.update(dish_params)
    flash[:notice] = "Dish Updated!"
    redirect_to dishes_path
  else
    flash[:alert] = "Dish Update Failed!"
    redirect_to dishes_path
  end
end

def destroy
  @dish = Dish.find(params[:id])
  @dish.destroy
  flash[:notice] = "Dish Deleted!"
  redirect_to dishes_path
end

private
def dish_params
  params.require(:dish).permit(:name, :cost, :country, :image)
end
end
