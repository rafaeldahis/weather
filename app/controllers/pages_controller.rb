class PagesController < ApplicationController
  def show
    render template: "pages/city"
  end
end