omise.recipients.create({
  'name': 'Somchai Prasert',
  'email': 'somchai.prasert@example.com',
  'type': 'individual',
  'bank_account': {
    'brand': 'bbl',
    'number': '1234567890',
    'name': 'SOMCHAI PRASERT'
  }
}, function(err, resp) {
  /* Response. */
});
