class Application
  def call(env)
    resp = Rack::Response.new
    
    t = Time.now
    puts t.hour
    if t.hour <= 12 then
      resp.write "Good Morning"
    else 
      resp.write "Good Afternoon"
    end
    
    resp.finish
  end
end 