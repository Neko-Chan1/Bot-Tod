# We're using Ubuntu 20.10
FROM ximfine/xproject:buster

#
# Clone repo and prepare working directory
#
RUN git clone -b alpha https://github.com/Neko-Chan1/Bot-Tod /home/xnewbie/
RUN mkdir /home/xnewbie/bin/
WORKDIR /home/xnewbie/

# Upgrade pip
RUN pip install --upgrade pip

#Install python requirements
# RUN pip3 install -r https://raw.githubusercontent.com/ximfine/XUserbot/sql-extended/requirements.txt

CMD ["python3","-m","userbot"]
