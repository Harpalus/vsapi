class ApplicationController < ActionController::API

  
  private
  def filterBannedItems(i = @items)
    # blank out information in the array if item is banned     
    
    i.each do |item|
      if(item['status name'] == 'Banned')
        item['seller name'] = nil
        item['published_date'] = nil
      end
    end
  end
  
  
end
