Meteor.startup ->
  Accounts.config
    restrictCreationByEmailDomain: 'iith.ac.in';
