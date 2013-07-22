HowTo::Application.routes.draw do
  root to: "topics#index"

  resources :topics do
    resources :steps
  end
end
#== Route Map
# Generated on 21 Jul 2013 15:22
#
#     topic_steps GET    /topics/:topic_id/steps(.:format)          steps#index
#                 POST   /topics/:topic_id/steps(.:format)          steps#create
#  new_topic_step GET    /topics/:topic_id/steps/new(.:format)      steps#new
# edit_topic_step GET    /topics/:topic_id/steps/:id/edit(.:format) steps#edit
#      topic_step GET    /topics/:topic_id/steps/:id(.:format)      steps#show
#                 PUT    /topics/:topic_id/steps/:id(.:format)      steps#update
#                 DELETE /topics/:topic_id/steps/:id(.:format)      steps#destroy
#          topics GET    /topics(.:format)                          topics#index
#                 POST   /topics(.:format)                          topics#create
#       new_topic GET    /topics/new(.:format)                      topics#new
#      edit_topic GET    /topics/:id/edit(.:format)                 topics#edit
#           topic GET    /topics/:id(.:format)                      topics#show
#                 PUT    /topics/:id(.:format)                      topics#update
#                 DELETE /topics/:id(.:format)                      topics#destroy
