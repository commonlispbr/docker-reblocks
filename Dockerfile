FROM commonlispbr/roswell:24.10.115
RUN ros install commonlispbr/quicksys
RUN ros run -s quicksys -e "(qs:install-dist :ultralisp)" -q
RUN ros run -s 40ants-routes -s reblocks -s reblocks-ui -q
