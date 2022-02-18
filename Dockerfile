FROM python:3
USER root

RUN apt-get update
RUN apt-get -y install locales && \
  localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN apt-get install -y vim less
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

# 便利ツール
RUN python -m pip install pip-review
RUN python -m pip install tqdm
RUN python -m pip install joblib
RUN python -m pip install jupyterlab

# 分析系
RUN python -m pip install pandas
RUN python -m pip install numpy
RUN python -m pip install scipy
RUN python -m pip install xlrd
RUN python -m pip install XlsxWriter

# 画像系
RUN python -m pip install matplotlib
RUN python -m pip install japanize-matplotlib
RUN python -m pip install Pillow
RUN python -m pip install opencv-python
RUN python -m pip install folium
RUN python -m pip install plotly
RUN python -m pip install wordcloud

# スクレイピング系
RUN python -m pip install requests
RUN python -m pip install beautifulsoup4
RUN python -m pip install lxml
RUN python -m pip install selenium

# web系
RUN python -m pip install Flask
RUN python -m pip install Flask-Bootstrap4
RUN python -m pip install Django
RUN python -m pip install PyMySQL
RUN python -m pip install tweepy
