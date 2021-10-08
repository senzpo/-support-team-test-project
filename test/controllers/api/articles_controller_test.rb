require 'test_helper'

class Api::ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get api_articles_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post api_articles_url, params: { article: { text: @article.text, title: @article.title } }
    end

    assert_response :success
  end

  test "should show article" do
    get api_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch api_article_url(@article), params: { article: { text: @article.text, title: @article.title } }
    assert_response :success
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete api_article_url(@article)
    end

    assert_response :success
  end
end
