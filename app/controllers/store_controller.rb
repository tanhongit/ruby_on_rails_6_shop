class StoreController < ApplicationController
  skip_before_action :authorize

  include CurrentCart
  before_action :set_cart

  def index
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
      # @products = Product.all
      # @search = Product.all.ransack params[:q]
      # @products = @search.result(distinct: true).paginate(page: params[:page], per_page: 10)
    end
  end
end
