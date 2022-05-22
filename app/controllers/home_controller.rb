class HomeController < ApplicationController
  def page
    #検索できる（機能）
    @q = Cook.ransack(params[:q])
    @cooks = @q.result(distinct: true)
  end
end
