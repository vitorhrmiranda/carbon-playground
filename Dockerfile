FROM linuxbrew/brew as deps

RUN brew update

RUN brew install python@3.9
RUN brew install bazelisk
RUN brew install llvm


FROM deps as carbon

RUN git clone https://github.com/carbon-language/carbon-lang carbon

WORKDIR /home/linuxbrew/carbon

RUN bazel build //explorer
