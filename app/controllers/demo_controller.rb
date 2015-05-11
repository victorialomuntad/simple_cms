class DemoController < ApplicationController
  
  layout false
  def index
     render('index')
  end

  def hello
     @array = [1,2,3,4,5]
     #render('hello')

     @id = params['id']
     @page = params[:page]
  end

  def other_index
  	redirect_to(:controller => 'demo', :action => 'index')
  end
end
