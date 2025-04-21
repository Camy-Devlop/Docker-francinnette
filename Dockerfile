FROM debian
ARG COMMIT_HASH
ENV COMMIT_HASH=$COMMIT_HASH

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    	apt-utils \
	net-tools \
	git \
	vim \
	lldb \
	python3 \
	python3.11-venv \
	python3-pip \
	gcc \
	clang \
	zsh \
	sudo \
	openssh-server \
	iptables \
    	curl \
	make \
	wget \
	libpq-dev \
	libbsd-dev \
	libncurses-dev \
	valgrind 
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

