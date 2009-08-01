# Change globals to match the proper value for your site



#social specific variables.
SITE_NAME = 'Tonka Park Social'
SITE_DOMAIN = 'yoursite.com'
SITE = RAILS_ENV == 'production' ? SITE_DOMAIN : 'localhost:3000'

MAILER_TO_ADDRESS = 'info@#{SITE}'
MAILER_FROM_ADDRESS = 'The Tonka Park Social Team <info@#{SITE_DOMAIN}>'

ABOUT_SITE = '  This website is a free service provided by <a href="http://tonkapark.com" alt="Tonka Park web design in Camdenton Missouri">Matt Anderson</a>, a lot owner in Tonka Springs Ranch. There is no catch other than that I ask for your participation. I hope to get to know future neighbors, find out information about where to find the best plans, designers, contractors, materials and even the best places to eat in the lake area. Thanks for taking the time to get involved.'

#clearance variables
DO_NOT_REPLY = "donotreply@#{SITE_DOMAIN}"
HOST = RAILS_ENV == 'production' ? SITE_DOMAIN : 'localhost:3000'