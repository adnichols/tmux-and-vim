FROM ubuntu
MAINTAINER Aaron Nichols anichols@trumped.org

RUN apt-get update
RUN apt-get -y install libssl-dev libxslt1-dev libxml2-dev git vim libevent-dev ncurses-dev build-essential
RUN apt-get -y install curl wget
RUN git clone https://github.com/sstephenson/rbenv.git /.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /.rbenv/plugins/ruby-build
ENV PATH /.rbenv/bin:$PATH
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh # or /etc/profile

# Install multiple versions of ruby
ENV CONFIGURE_OPTS --disable-install-doc
RUN rbenv install 2.0.0-p353

RUN rbenv global 2.0.0-p353
RUN wget http://downloads.sourceforge.net/tmux/tmux-1.8.tar.gz
RUN tar -zxf tmux-1.8.tar.gz
RUN cd tmux-1.8 && ./configure && make && make install

RUN git clone https://github.com/adnichols/tmux-and-vim.git ~/.janus
RUN bash -l -c ~/.janus/setup/setup.sh

CMD /bin/bash

