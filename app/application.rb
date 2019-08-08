require "rack"

class Application
  def call(env)
    res = Rack::Response.new

    now = Time.now

    if (now.hour >= 12)
      res.write("Good Afternoon")
    else
      res.write("Good Morning")
    end
    
    res.finish
  end
end
