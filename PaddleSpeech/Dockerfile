#https://github.com/PaddlePaddle/PaddleSpeech
FROM ubuntu:20.04
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y git python3-pip wget libsndfile1-dev
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
WORKDIR /workspace/
RUN git clone https://gitee.com/paddlepaddle/PaddleSpeech
WORKDIR /workspace/PaddleSpeech/
RUN pip install pytest-runner paddlepaddle 
RUN pip install . -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN wget -P data https://paddlespeech.bj.bcebos.com/Parakeet/tools/nltk_data.tar.gz
RUN tar zxvf data/nltk_data.tar.gz
RUN wget -c https://paddlespeech.bj.bcebos.com/PaddleAudio/zh.wav
RUN paddlespeech asr --lang zh --input zh.wav
CMD paddlespeech_server start --config_file ./demos/streaming_asr_server/conf/application.yaml
