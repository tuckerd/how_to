require 'spec_helper'

describe TopicsController do
  it "displays an error for a missing How To" do
    get :show, :id => "not-here"
    response.should redirect_to(topics_path)
    message = "The How To Topic you were looking for could not be found."
    flash[:alert].should eql(message)
  end
end
