#Paul Graham Essay Scraper for Kindle

Convert a list of good Paul Graham Essays to mobi format for kindle.

##Download

Download the ebook or run the scraper yourself.

##How to run:

1. Clone this project
2. Install dependencies

```command
gem install uri
gem install open-uri
gem install nokogiri
```

3. Run the script and output into html file

```command
ruby pg_scraper.rb > pg.html
```

4. Convert (requires Calibre CLI)

```command
ebook-convert pg.html pg.mobi --authors "Paul Graham" --title "Essays" --max-toc-links 500
```