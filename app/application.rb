
class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
<<<<<<< HEAD
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      item = @@items.find{|i| i.name == item_name}
        
        if item
          resp.write item.price
          resp.status = 200
        else
          resp.write "Item not found"
          resp.status = 400
        end 
=======
      if req.path.match(/items/)
        item_name = req.path.split("/items/").last
        item = @@items.find{|i| i.name == item_name}
          resp.write item.price
          
         if item
           resp.write "Route not found"
           resp.status = 400
         else
          
         end 
      # end
>>>>>>> 5192544a4ef7da0d9f2e36f086931e99a26485cc
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end