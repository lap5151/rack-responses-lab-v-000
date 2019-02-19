class Application

  def call(env)
    resp = Rack::Response.new

    resp.write "#{Time.new}\n"

    if Time.new < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
