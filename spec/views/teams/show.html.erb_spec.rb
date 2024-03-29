require 'rails_helper'

RSpec.describe "teams/show", :type => :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :nazwa => "Nazwa",
      :opis => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nazwa/)
    expect(rendered).to match(/MyText/)
  end
end
