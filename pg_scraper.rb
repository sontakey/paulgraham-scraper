require 'nokogiri'
require 'open-uri'
require 'uri'
require 'simple-rss'

rss = SimpleRSS.parse open("http://www.aaronsw.com/2002/feeds/pgessays.rss")
rss.items.each do |item|
  doc = Nokogiri::HTML(open(item.link))
  @chapter_content = doc.css('td')[2].css('td')[0] #html formatted <td width="435">
  @chapter_content = @chapter_content.to_s.gsub("\n"," ")
  @chapter_content = @chapter_content.to_s.gsub('<td width="435">','')
  @chapter_content = @chapter_content.to_s.gsub('<td>','')
  @chapter_content = @chapter_content.to_s.gsub('</td>','')
  @chapter_content = @chapter_content.to_s.gsub('alt="','alt="">')
  puts @chapter_content
end
