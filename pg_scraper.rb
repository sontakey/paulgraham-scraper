require 'nokogiri'
require 'open-uri'
require 'uri'

@essay_list = ["http://paulgraham.com/hp.html",
  "http://paulgraham.com/wealth.html",
  "http://paulgraham.com/start.html",
  "http://paulgraham.com/hiring.html",
  "http://paulgraham.com/opensource.html",
  "http://paulgraham.com/notnot.html",
  "http://paulgraham.com/startupmistakes.html",
  "http://paulgraham.com/head.html",
  "http://paulgraham.com/cities.html",
  "http://paulgraham.com/startuplessons.html",
  "http://paulgraham.com/relres.html"]

@essay_list.each do |url|
  doc = Nokogiri::HTML(open(url))
  @chapter_content = doc.css('td')[2].css('td')[0] #html formatted <td width="435">
  @chapter_content = @chapter_content.to_s.gsub("\n"," ")
  @chapter_content = @chapter_content.to_s.gsub('<td width="435">','')
  @chapter_content = @chapter_content.to_s.gsub('<td>','')
  @chapter_content = @chapter_content.to_s.gsub('</td>','')
  @chapter_content = @chapter_content.to_s.gsub('alt="','alt="">')
  puts @chapter_content
end