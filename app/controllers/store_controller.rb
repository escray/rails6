# frozen_string_literal: true

class StoreController < ApplicationController
  def index
    @products = Product.order(:title)

    if session[:counter].nil?
      @acc_count = 0
      session[:counter] = @acc_count
    else
      @acc_count = session[:counter]
      session[:counter] = @acc_count + 1
    end
  end
end
