# Change globals to match the proper value for your site



#social specific variables.
SITE_NAME = 'Tonka Park Social'
SITE_DOMAIN = 'yoursite.com'
SITE = RAILS_ENV == 'production' ? SITE_DOMAIN : 'localhost:3000'

MAILER_TO_ADDRESS = 'info@#{SITE}'
MAILER_FROM_ADDRESS = 'The Tonka Park Social Team <info@#{SITE_DOMAIN}>'


#clearance variables
DO_NOT_REPLY = "donotreply@#{SITE_DOMAIN}"
HOST = RAILS_ENV == 'production' ? SITE_DOMAIN : 'localhost:3000'