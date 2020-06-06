module FetchArticles
    require 'rest-client'
    class Articles
      def self.update_news
        url = "https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=0a708bae59cd4f92b26a6bc4c114f1f0"
        data = JSON.parse( RestClient.get("#{url}") )
        data["articles"].each do |article, index|
            existing_article = Article.find_by(title: article["title"])
            if existing_article.blank?
                news = Article.new
                news.author = article["author"]
                news.title = article["title"]
                news.description = article["description"]
                news.url = article["url"]
                news.image_url = article["urlToImage"]
                news.publish_at = article["publishedAt"].to_datetime
                news.content = article["content"]
                if news.save
                    puts "saved nyt"
                else
                    puts "not saved"
                end
            end
        end
      end
    end
end