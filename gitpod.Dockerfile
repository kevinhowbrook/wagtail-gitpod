FROM gitpod/workspace-full:latest
USER root

# We need to install heroku as root, then chown a few dirs so we don't recieve access
# permission errors when running heroku commands. In short this is a workaround for gitpod
# not allow 'sudo' commands
RUN curl https://cli-assets.heroku.com/install.sh 14 | sh
RUN chown -R gitpod:gitpod /home/gitpod/.cache/heroku
RUN chown -R gitpod:gitpod /home/gitpod/.local/share/heroku/

# Install aws cli
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws


USER gitpod
