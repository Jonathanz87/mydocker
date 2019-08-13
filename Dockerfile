FROM ubuntu

COPY ["./crypto-1.0-SNAPSHOT.jar", "/crypto.jar"], ["./start.sh", "/start.sh"]

RUN apt-get update; \
    echo y | apt-get install curl git vim zsh openjdk-11-jdk; \
    echo y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" ;\
    chmod +X /start.sh;

# ENTRYPOINT ["/start.sh"]

CMD zsh;
#     git config --global user.name `java -jar /crypto.jar decript $privateKey $gitName`; \
#     git config --global user.email `java -jar /crypto.jar decript $privateKey $gitEmail`;
