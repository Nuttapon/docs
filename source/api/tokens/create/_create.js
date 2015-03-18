omise.tokens.create({
  'card':{
    'name': 'JOHN DOE',
    'city': 'Bangkok',
    'postal_code': 10320,
    'number': '4242424242424242',
    'expiration_month': 2,
    'expiration_year': 2017,
    'security_code': 123
  }
}, function(error, token) {
  /* Response. */
});
