README.md
# Basic Automation Project to test a [website](https://arstechnica.com/) [![arstechnica](https://cdn.arstechnica.net/favicon.ico)](https://arstechnica.com/) with Ruby, Selenium and RSpec

## How to Install
If you have a mac, certain characteristcs/programs/dependencies would be there by default

Open your terminal and run:

> ruby -v  

#for example in my case the default result in my OS was:  
```sh
ruby 2.6.8p205 (2021-07-07 revision 67951) [universal.arm64e-darwin21]
```


> cd /Users</yourUser></yourProjectLocation>/AutomationRubySeleniumRSpec

> bundle install  

#^ It will install rspec and selenium gems


> gem list rsp  

#^ for example in my computer the result was:  
```sh
*** LOCAL GEMS ***  
rspec (3.11.0)  
rspec-core (3.11.0)  
rspec-expectations (3.11.0)  
rspec-mocks (3.11.1)  
rspec-support (3.11.0)  
```


> gem list sel  

#^ for example in my computer the result was:
```sh
*** LOCAL GEMS ***  
selenium-webdriver (4.1.0)  
```

> brew install --cask chromedriver

# How to run the tests
> bundle exec rspec  

#for basic tests without any extra dependencies you can use: >ruby <fileName.rb>

#If you receive a message like this " “chromedriver” can’t be opened because Apple cannot check it for malicious software. "  
#The problem is a file from a location similar to this: /opt/homebrew/Caskroom/chromedriver/100.0.4896.60/chromedriver  
To fix it you need to do the following:  
In macOS when an app fails to install because it hasn’t been notarized or is from an unidentified developer, it will appear in System Preferences > Security & Privacy, under the General tab. Click Open Anyway to confirm your intent to open or install the app.    

#after that, run again the previous command




