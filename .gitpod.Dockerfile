FROM gitpod/workspace-full

RUN brew install hugo
RUN mkdir -p /home/gitpod/copilot/bin
RUN curl -Lo /home/gitpod/copilot/bin/copilot https://github.com/aws/copilot-cli/releases/latest/download/copilot-linux
RUN chmod +x /home/gitpod/copilot/bin/copilot
ENV PATH $PATH:/home/gitpod/copilot/bin
RUN curl -o awscliv2.zip https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
RUN unzip awscliv2.zip
RUN mkdir -p /home/gitpod/aws/bin
RUN ./aws/install --install-dir /home/gitpod/aws --bin-dir /home/gitpod/aws/bin
RUN rm -rf aws awscliv2.zip
ENV PATH $PATH:/home/gitpod/aws/bin