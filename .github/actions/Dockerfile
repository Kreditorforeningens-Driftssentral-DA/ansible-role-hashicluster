FROM quay.io/ansible/molecule:3.0.6

COPY docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /github/workspace

CMD ln -s `pwd` /tmp/$GITHUB_REPOSITORY \
    && cd /tmp/$GITHUB_REPOSITORY \
    && ls -lts \
    && molecule --version \
    && ansible --version