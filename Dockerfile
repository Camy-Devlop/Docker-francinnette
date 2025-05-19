FROM debian
ARG COMMIT_HASH
ENV COMMIT_HASH=$COMMIT_HASH

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    	apt-utils \
	autotools-dev \
	automake \
	bzip2 \
	build-essential \
	clang \
    	curl \
	git \
	gcc \
	iptables \
	lldb \
	python3>=3.11 \
	python3.11-venv \
	python3-pip \
	sudo \
	libpq-dev \
	libbsd-dev \
	libncurses-dev \
	libc6-dbg \
	lsb-release \
	make \
	net-tools \
	openssh-server \
	vim \
	wget \
	zsh 

RUN mkdir /opt/src
RUN wget -P /opt/src https://sourceware.org/pub/valgrind/valgrind-3.22.0.tar.bz2
RUN tar -xvf /opt/src/valgrind-3.22.0.tar.bz2 -C /opt/src
RUN cd /opt/src/valgrind-3.22.0 && bash autogen.sh && ./configure && make && make install
RUN git clone https://github.com/42Paris/norminette.git ~/.norminette/
RUN echo 'alias norminette="~/.norminette/norminette.rb"' >> ~/.zshrc
RUN python3 -m pip install --upgrade pip setuptools --break-system-packages
RUN python3 -m pip install norminette --break-system-packages
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN bash -c "$(curl -fsSL https://raw.github.com/xicodomingues/francinette/master/bin/install.sh)"
RUN git clone https://github.com/Tripouille/libftTester /app/libftTester
RUN echo "Commit utilisé pour ce build : $COMMIT_HASH"

WORKDIR /app
COPY start.sh /root/start.sh
RUN chmod 777 /root/start.sh
RUN echo "if [ -f "$HOME/start.sh" ]; then " >> /root/.zshrc
RUN echo  "  bash "$HOME/start.sh" " >> /root/.zshrc
RUN echo "fi" >> /root/.zshrc
CMD ["zsh"]

