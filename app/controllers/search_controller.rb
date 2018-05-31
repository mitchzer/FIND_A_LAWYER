class SearchController < ApplicationController
def index
   if params[:query].present?
     results = Lawyer.search(params[:query])
   else
     @results = Lawyer.all
   end
 end
end
