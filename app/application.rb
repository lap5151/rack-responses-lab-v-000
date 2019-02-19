class Application

  def call(env)
    resp = Rack::Response.new

    resp.write "#{Time.new.ctime}\n"

    if Time.new.ctime < "12"
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
