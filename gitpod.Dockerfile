FROM gitpod/workspace-postgres

USER gitpod

RUN curl https://cli-assets.heroku.com/install.sh 14 | sh
RUN curl -sSL https://s3.amazonaws.com/aws-cli/awscli-bundle.zip -o /tmp/awscli-bundle.zip && unzip -q /tmp/awscli-bundle.zip -d /tmp &&
 /tmp/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && rm -rf /tmp/awscli-bundle.zip /tmp/awscli-bundle &&
