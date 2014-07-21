require 'spec_helper'

describe "Homepages" do
  
  describe "Index page" do
 	
 	describe "Header" do
      it "should have the content 'Twitter Newspaper'" do
        visit root_path
        expect(page).to have_content('Twitter Newspaper')
      end

      it "should have logo" do
	    visit root_path
	    page.should have_css("img[src*='rails.jpg']")    	
      end

      it "should have buttons" do
        visit root_path
        expect(page).to have_link('Sign in')
        expect(page).to have_link('Sign up')      
      end
	end

    describe "Main area" do      
      
      it "Column 1 contains: Idea overview" do
      	visit root_path
  	    expect(page).to have_content('Idea overview')
  	  end
  	  
  	  it "Column 2 contains: Maun usage scenario" do
  	    visit root_path
  	    expect(page).to have_content('Main usage scenario')
  	  end

  	  it "Column 3 contains: Links to github" do
  	    visit root_path
  	    expect(page).to have_content('github')
  	    expect(page).to have_link('App repo', href: "https://github.com/sigibart/TwitterNewspaper" )
  	    expect(page).to have_link('My github', href: "https://github.com/sigibart/" )
  	  end

  	describe "Footer" do
  	  it "should have current date" do
  	  	visit root_path
  	  	expect(page).to have_content ('Current date: ' + Time.now.to_s)
  	  end
  	end




  	end

  end

end
