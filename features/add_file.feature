Feature: Add file to repository
  In order to keep track of new files
  As a user
  I want to add a file to the Checkpt repository

  Background:
  Given I am in an existing repository
    And the repository has the following files:
      | filename     |
      | episode1.avi |
      | episode2.avi |
      | episode3.avi |
      | episode4.avi |
    And the following files are checked in:
      | filename     |
      | episode1.avi |
      | episode2.avi |

  @wip
  Scenario: Adding a file that already exists
    When I run "checkpt add episode1.avi"
    Then I should see "The file episode1.avi is already being tracked by checkpt"
     And the checkpt file should have the following files in it:
      | filename     |
      | episode1.avi |
      | episode2.avi |

  @wip
  Scenario: Adding a single file to the repository
    When I run "checkpt add episode3.avi"
    Then the checkpt file should have the following files in it:
      | filename     |
      | episode1.avi |
      | episode2.avi |
      | episode3.avi |

  @wip
  Scenario: Adding multiple files to the repository
    When I run "checkpt add episode3.avi episode4.avi"
    Then the checkpt file should have the following files in it:
      | filename     |
      | episode1.avi |
      | episode2.avi |
      | episode3.avi |
      | episode4.avi |
