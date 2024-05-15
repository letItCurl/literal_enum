require "test_helper"

class LiteralEnum::ConernBinderTest < ActiveSupport::TestCase
  test "Enum methods works" do
    article = Article.new(name: "Hello", status: "pending")
    assert article.pending?
  end

  test "Statuses are validated" do
    assert_raises ArgumentError do
      Article.new(name: "Hello", status: "will_fail")
    end
  end

  test "Saves string to database" do
    article = Article.create(name: "Hello", status: "pending")
    database_status_value = ActiveRecord::Base.connection
      .execute("SELECT * FROM articles")
      .first["status"]
    assert_equal database_status_value, "pending"
  end

  test "Enum will return a string" do
    article = Article.create(name: "Hello", status: "pending")

    assert_equal article.status, "pending"
  end

  test "Works with a symbol" do
    article = Article.create(name: "Hello", status: :pending)

    assert_equal article.status, "pending"
  end
end
