class MainController < ApplicationController
  CONTENT = HashWithIndifferentAccess.new(YAML.load(File.open("#{Rails.root}/config/content/content.yml", 'r')))

  def index
    @content = CONTENT
    @case_studies = CONTENT[:case_studies]
  end

  def technology
  end

  def about
  end

  def get_started
  end
end
