class CooksController < ApplicationController
  before_action :set_cook, only: [:show, :edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]
  
  def index
    @cooks = Cook.all
  end
  
  def new
    @cook = Cook.new
  end
  
  def create
    @cook = Cook.new(params.require(:cook).permit(:name, :time, :point, :target_people, :image, :ingredient, :recipe, :target_cook))
    if @cook.save
      flash[:notice] = "料理を登録しました"
      redirect_to :cooks
    else
      render "new"
    end
  end
  
  def show
    @cook = Cook.find(params[:id])
  end
  
  def edit
    @cook = Cook.find(params[:id])
  end
  
  def update
    @cook = Cook.find(params[:id])
    if @cook.update(params.require(:cook).permit(:name, :time, :point, :target_people, :image, :ingredient, :recipe, :target_cook))
      flash[:notice] = "料理の「#{@cook.id}」情報を更新しました"
      redirect_to :cooks
    else
      render "edit"
    end
  end
  
  def destroy
    @cook = Cook.find(params[:id])
    @cook.destroy
    flash[:notice] = "料理を削除しました"
    redirect_to :cooks
  end
  
  #検索できる
  def search
    @results = @q.result
  end
  
  private
  
  def set_q
    @q = Cook.ransack(params[:q])
  end
  
  def set_cook
    @cook = Cook.find(params[:id])
  end
  
  def cook_params
    params.require(:cook).permit(:name, :time, :point, :target_people, :image, :ingredient, :recipe)
  end
end
