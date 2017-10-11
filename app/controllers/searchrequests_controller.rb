class SearchrequestsController < ApplicationController
  def index
    @searchrequest = Searchrequest.find(:all)
  end

  def new
    @messages = flash[:messages]
    @searchrequest = flash[:searchrequest] ||= Searchrequest.new
  end

  def create
    searchrequest = Searchrequest.create do |b|
      b.product = params[:product]
      b.price = params[:price]
    end
    if searchrequest.errors.any?
      flash[:messages] = searchrequest.errors.full_messages
      flash[:searchrequest] = searchrequest
      return redirect_to :action=>'new', :searchrequest => searchrequest
    end
    redirect_to :action=>'list'
  end
end
