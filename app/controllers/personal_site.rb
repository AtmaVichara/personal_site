require 'rack'

class PersonalSite
  def self.call(env)
    case env["PATH_INFO"]
    when '/' then index
    else
      error
  end

  def self.index
    ['200', {'Content-Type' => 'text/html'}, [File.read('./app/views/index.html')]]
  end

  def self.error
    ['200', {'Content-Type' => 'text/html'}, [File.read('./app/views/error.html')]]
  end
end
