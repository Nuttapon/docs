omise.recipients.create({
  'name': 'John Doe',
  'description': 'John Doe (id: 30)',
  'email': 'john.doe@example.com',
  'type': 'individual',
  'tax_id': 1234567890,
  'bank_account': {
    'brand': 'bbl',
    'number': 1234567890,
    'name': 'John Doe'
  }
}, function(err, resp) {
  /* Response. */
});
