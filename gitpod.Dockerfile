FROM gitpod/workspace-postgres

USER root

RUN curl https://cli-assets.heroku.com/install.sh 14 | sh
#RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
#RUN unzip awscli-bundle.zip
#RUN sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
USER gitpod
