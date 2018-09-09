Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope 'api' do
    scope 'v1' do
      scope 'vsts' do
        post 'build', to: 'vsts#build_complete'
        post 'pull_request', to: 'vsts#pull_request'
      end
      scope 'github' do
        post 'build', to: 'github#build_complete'
        post 'pull_request', to: 'github#pull_request'
      end
    end
  end
end
