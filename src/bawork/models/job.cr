struct Job
  property title : String
  property url : String

  def initialize(@title : String, @url : String)
    title = @title
    url = @url
  end
end

# Usage
# job = Job.new("#job_title", "#job_url")
