class Application

    def call(env)
      resp = Rack::Response.new
      mor_aft = nil
      time = Time.now

      time.hour >= 12 ? mor_aft = "Afternoon" : mor_aft = "Morning"
      resp.write "Hello, Good #{mor_aft}"
      resp.finish
    end
  
  end