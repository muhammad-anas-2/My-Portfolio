# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @pages = Blog.all
    @skills = Skill.all
  end

  def about
    @skills = Skill.all
  end

  def contact; end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end
