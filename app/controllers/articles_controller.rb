class ArticlesController < ApplicationController

  def index
    fetch_feeds
    @articles = Article.all
  end

  def fetch_feeds
	  require 'net/http'
		require 'json'

		url = 'https://s3-eu-west-1.amazonaws.com/olio-staging-images/developer/test-articles-v4.json'
		uri = URI(url)
		response = Net::HTTP.get(uri)
		articles_data = JSON.parse(response)

		articles_data.each do |article|
			record = Article.find_or_create_by(article_id: article['id'])
      record.title =  article['title']
      record.description =  article['description']
      record.save
		end
  end

  def like
    article = Article.find(params[:id])
    article.likes += 1
    article.save
    redirect_to articles_path
  end
end