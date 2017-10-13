# initalize from official image
FROM docker.elastic.co/kibana/kibana:5.6.3
# un/install plugins
RUN bin/kibana-plugin remove x-pack
# add default config
ADD kibana.yml /usr/share/kibana/config/
USER root
RUN chown kibana:kibana config/kibana.yml
USER kibana
