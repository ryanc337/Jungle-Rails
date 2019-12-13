class Admin::DashboardController < ApplicationController
  def show
    @count_p = Product.count
    @count_c = Category.count
  end
end
