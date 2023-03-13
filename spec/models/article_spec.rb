require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { Article.new() }

  it 'should have valid attributes' do
    article.validate
    expect(article.errors[:article_id]).to include("can't be blank")
    expect(article.errors[:title]).to include("can't be blank")
    article.article_id = '3899634'
    article.title = 'Epson Stylus Printer Cartridges'
    expect(article).to be_valid
  end
end