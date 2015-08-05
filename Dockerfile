FROM rails:4.2

# Pre-install thin, so each app doesn't have to.
RUN gem install thin
RUN thin install

VOLUME /application

ADD listener.rb /listener.rb
ADD restart-thin.sh /restart-thin.sh

EXPOSE 80

CMD /listener.rb
