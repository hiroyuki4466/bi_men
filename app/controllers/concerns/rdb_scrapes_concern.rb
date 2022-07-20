module RdbScrapesConcern
  require 'open-uri'
  require 'nokogiri'
  require 'anemone'

  def scrape_rdb_shops
    state = %w[tokyo kanagawa saitama chiba ibaraki]
    url = "https://ramendb.supleks.jp/search?page=1&state=#{state}&city=&order=point&station-id=0&tags=2"

    charset = nil
    html = open(url) do |f|
      charset = f.charset
      f.read
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)

    @shops = doc.xpath('//ul[@id="searched"]').css('tr').map do |node|
      @shops << node.css("td[1]").text
    end.drop(1)

    p @shops
  end
end
