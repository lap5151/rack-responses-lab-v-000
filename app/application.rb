class application

  def call(env)
   resp = Rack::Response.new

   time = GET time 

   if time > 12
     resp.write "Good Morning!"
   else
     resp.write "Good Afternoon!"
   end

   resp.finish
 end

end
