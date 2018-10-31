require "./bawork/**"

# Internal
require "logger"

# Depends
require "crystagiri"

log = Logger.new(STDOUT, level: Logger::WARN)

module Bawork
  log.info("bawork entry point")
  log.info("getting latest job posting")

  jobs = Careers.get_jobs
  p jobs
end
