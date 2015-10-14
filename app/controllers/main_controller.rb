class MainController < ApplicationController
  CONTENT = HashWithIndifferentAccess.new(YAML.load(File.open("#{Rails.root}/config/content/content.yml", 'r')))
  CASE_STUDIES = HashWithIndifferentAccess.new(YAML.load(File.open("#{Rails.root}/config/content/case_studies.yml", 'r')))
  FEATURES = HashWithIndifferentAccess.new(YAML.load(File.open("#{Rails.root}/config/content/features.yml", 'r')))

  def index
    @content = CONTENT
    @case_studies = CASE_STUDIES['case_studies']
    @features = FEATURES['features']
  end
end
