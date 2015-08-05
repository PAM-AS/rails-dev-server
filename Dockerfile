FROM rails:4.2

# Pre-install thin, so each app doesn't have to.
RUN gem install thin
RUN thin install
RUN thin config -C /etc/thin/app.yml -c /application/

VOLUME /application

ADD listener.rb /listener.rb
ADD restart-thin.sh /restart-thin.sh

EXPOSE 80
EXPOSE 2000

CMD /listener.rb
