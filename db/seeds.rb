User.create_with(
  first_name:            'John',
  last_name:             'Doe',
  phone:                 '+12345678909',
).find_or_create_by(email: 'user@gmail.com')

Trader.create_with(
  first_name:            'Joana',
  last_name:             'Bellingam',
  phone:                 '+12345678900',
).find_or_create_by(email: 'trader@gmail.com')
