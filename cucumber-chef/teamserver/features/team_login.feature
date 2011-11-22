Feature: Technical team members can log into team server

  So that we are more efficient with our time
  As a technical team
  We can connect to a shared server to collaborate on client work

  Scenario: Users can connect to server via ssh key
    Given a newly bootstrapped server
    When the technical users recipe is applied
    Then a user should be able to ssh to the server

  Scenario: Default shell is bash
    Given a newly bootstrapped server
    When the technical users receipe is applied
    And a user connects to the server via ssh
    Then their login shell should be "bash"

  Scenario: Users can change the default shell
    Given a newly bootstrapped server
    But with a user's default shell changed to "ksh"
    When the technical users recipe is applied
    And the user connects to the server via ssh
    Then their login shell should be "ksh"
