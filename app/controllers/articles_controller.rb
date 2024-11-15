class ArticlesController < ApplicationController
  def index
    ApplicationRecord.connected_to(role: :writing) do
      Article.new(title: "New Article #{Time.zone.now}", body: "body").save!
    end

    @articles = Article.all
  end
end
