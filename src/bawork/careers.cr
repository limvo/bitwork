module Careers
  extend self

  BIT_ALLIANCE_API = "http://bit-alliance.ba/bs/careers/"

  def self.get_jobs
    doc = Crystagiri::HTML.from_url BIT_ALLIANCE_API

    jobs = [] of Job

    # tag.content => Job Title
    # tag.node.attributes => Job URL

    doc.where_class("career-title") do |job|
      _job = Job.new(job.content, job.node.attributes["href"].content)
      jobs << _job
    end

    jobs
  end
end
