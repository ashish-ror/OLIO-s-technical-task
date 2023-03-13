require 'rails_helper'

RSpec.describe ArticlesController, type: :request do
  describe '#index' do

    it 'should load and create articles sucessfully' do
      get '/articles'

      expect(response).to have_http_status(:success)
      expect(Article.count).to be > 0
    end
  end

  describe '#like' do
    let(:article) { Article.create(article_id: '3899631', title: 'Article Title 1', description: 'Article Description 1', likes: 0) }

    it 'should update the like of article' do
      put "/articles/#{article.id}/like"

      expect(Article.first.likes).to eq(1)
    end
  end

  
end
