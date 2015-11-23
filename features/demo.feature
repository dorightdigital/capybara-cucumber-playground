Feature: Demo how these tests work

Scenario: Generate "Let Me Google That For You" link
  When I visit Let Me Google That For You
  And I generate a link for search term "Cucumber best practices"
  Then the link provied should be "http://lmgtfy.com/?q=Cucumber+best+practices"

