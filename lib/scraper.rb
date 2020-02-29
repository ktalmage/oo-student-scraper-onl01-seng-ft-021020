require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './student.rb'
class Scraper

  
  def self.scrape_index_page(index_url)
  scraped_students = []
  student_hash = {}
  index_url= open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")
  doc = Nokogiri::HTML(index_url)
  
  binding.pry
  scraped_students << doc
  scraped_students.each do |student|
  
  student_hash[student_hash.to_sym] = {
     :name => student.css("h4.student-name").text,
    :location => student.css("p.student-location").text
    # :profile_url = student.css('div.view-profile-div').text
  }
  
  
  
    end
  end

  
    
end




