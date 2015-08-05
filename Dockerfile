FROM rails:4.2

# Pre-install thin, so each app doesn't have to.
RUN gem install thin
