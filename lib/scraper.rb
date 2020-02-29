require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './student.rb'
class Scraper

  
  def self.scrape_index_page(index_url)
  scraped_students = []
  index_url= open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")
  doc = Nokogiri::HTML(index_url)
  
  doc.css("div.student-card").each do |student|
    name = student.css("h4.student-name").text,
    location = student.css("p.student-location").text,
    profile_url = student.css("a").attribute("href").value
    student_hash = {:name => name,
            :location => location,
            :profile_url => profile_url}
    scraped_students << student_hash
    end
    scraped_students
  end

  
    
end




