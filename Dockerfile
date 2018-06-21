# initalize from official image
FROM docker.elastic.co/kibana/kibana-oss:6.3.0
# un/install plugins
# add default config
ADD kibana.yml /usr/share/kibana/config/
USER root
RUN chown kibana:kibana config/kibana.yml
USER kibana
