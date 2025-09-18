require "nokogiri"
require "open-uri"

require_relative "course"

class Scraper
  def print_courses
    make_courses
    Course.all.each do |course|
      next unless course.title && course.title != ""

      puts "Title: #{course.title}"
      puts "  Schedule: #{course.schedule}"
      puts "  Description: #{course.description}"
    end
  end
end
