class PagesController < ApplicationController
  def home
  end
  
  def about
  end
  
  def hacker_list
    @hackers = User.hackers
  end
  
  def biz_monkey_list
    @monkeys = User.biz_monkeys
  end
end
