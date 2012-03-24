class PagesController < ApplicationController
  def home
  end
  
  def about
  end
  
  def hacker_list
    @hackers = User.hackers.page params[:page]
  end
  
  def biz_monkey_list
    @monkeys = User.biz_monkeys.page params[:page]
  end
end
