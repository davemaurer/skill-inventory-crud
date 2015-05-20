require 'models/skill_inventory'

class SkillInventoryApp < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')

  get '/' do
    erb :dashboard
  end

  get '/skills' do
    @tasks = SkillInventory.all
    erb :index
  end



end
