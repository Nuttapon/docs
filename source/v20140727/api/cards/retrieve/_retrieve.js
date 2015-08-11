var omise = require('omise-node')({'secretKey': 'skey_test_4xsjvwfnvb2g0l81sjz'});
omise.customers.retrieveCard(
  'cust_test_4xsjvylia03ur542vn6',
  'card_test_4xsjw0t21xaxnuzi9gs',
  function(error, card) {
    /* Response. */
  }
);
