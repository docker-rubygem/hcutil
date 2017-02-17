FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.0

RUN gem install hcutil --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["hcutil"]
CMD ["--help"]
