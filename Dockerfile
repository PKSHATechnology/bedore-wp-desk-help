FROM ruby:2.6.9
WORKDIR /usr/src/app

ENV LC_CTYPE en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8

RUN gem install rake
RUN gem install zendesk_apps_tools

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
	 apt-get install -y nodejs
EXPOSE 4567
