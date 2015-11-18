# This file is ONLY used for creating a docker image to host my personal
# blog. The gem packages and dependencies may not work for other jekyll blogs.
#
# If you want to create a jekyll image for your jekyll static website,
# you can customize this file as you want.
#
FROM centos:7

MAINTAINER Conghui He <heconghui@gmail.com> version: 0.1

RUN yum update -y && yum clean all

RUN yum install -y epel-release

RUN yum install -y ruby \
                   ruby-devel \
                   nodejs

RUN yum install -y httpd
RUN yum install -y rubygems npm
RUN yum install -y make
RUN gem install jekyll
RUN gem install jekyll-sitemap
RUN gem install pygments.rb --version "=0.5.0"
RUN gem install jekyll-paginate
RUN gem install redcarpet

EXPOSE 4000/tcp
