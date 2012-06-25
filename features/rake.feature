Feature: rake support
  In order to do technical coordination
  As a console user
  I want use rake tasks

  Scenario: View list of rake commands
    When I run `rake -T`
    And the output should contain rake command "default" with description "Run Cucumber to collect coverage"
    And the output should contain rake command "cucumber" with description "Run Cucumber features"
