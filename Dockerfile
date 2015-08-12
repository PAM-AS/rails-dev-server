FROM rails:4.2

# You should override this with a custom mounted volume.
VOLUME /application

ADD listener.rb /listener.rb
ADD restart-thin.sh /restart-thin.sh
ADD start-thin.sh /start-thin.sh

EXPOSE 80
EXPOSE 2000

ENTRYPOINT ["/start-thin.sh"]
