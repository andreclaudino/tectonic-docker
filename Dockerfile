FROM alpine:latest as builder

# builds andreclaudino/tectonic

RUN apk add --update wget tar tectonic

WORKDIR /usr/src/tex
RUN wget 'https://sourceforge.net/projects/biblatex-biber/files/biblatex-biber/2.11/binaries/Linux-musl/biber-linux_x86_64-musl.tar.gz'
RUN tar -xvzf biber-linux_x86_64-musl.tar.gz
RUN chmod +x biber
RUN cp biber /usr/bin/biber

ADD manning/ /usr/src/tex/manning/
ADD uerj/ /usr/src/tex/uerj/
# first run - keep files for biber
RUN cd /usr/src/tex/uerj; tectonic --keep-intermediates --reruns 0 main.tex
RUN cd /usr/src/tex/manning; tectonic --keep-intermediates --reruns 0 main.tex
RUN cd /usr/src/tex/

FROM alpine:latest
RUN apk add --update --no-cache harfbuzz libstdc++ fontconfig icu-libs harfbuzz-icu npm make
RUN npm install -g @mermaid-js/mermaid-cli

COPY --from=builder /usr/bin/tectonic /usr/bin/
COPY --from=builder /root/.cache/Tectonic/ /root/.cache/Tectonic/
COPY --from=builder /usr/bin/biber /usr/bin/

WORKDIR /usr/src/tex