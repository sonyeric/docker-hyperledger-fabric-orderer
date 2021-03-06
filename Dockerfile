# Dockerfile for Hyperledger fabric orderer image.

FROM yeasy/hyperledger-fabric-base:latest
MAINTAINER Baohua Yang <yeasy.github.com>

#EXPOSE 7050

ENV ORDERER_CFG_PATH /etc/hyperledger/fabric/
ENV ORDERER_GENERAL_LOCALMSPDIR $ORDERER_CFG_PATH/msp/sampleconfig
ENV ORDERER_GENERAL_LISTENADDRESS 0.0.0.0
ENV CONFIGTX_ORDERER_ORDERERTYPE=solo

RUN mkdir -p $ORDERER_CFG_PATH $ORDERER_GENERAL_LOCALMSPDIR

# install hyperledger fabric orderer
RUN cd $FABRIC_HOME/orderer \
        && CGO_CFLAGS=" " go install -ldflags "-X github.com/hyperledger/fabric/common/metadata.Version=${PROJECT_VERSION} -X github.com/hyperledger/fabric/common/metadata.BaseVersion=${BASE_VERSION} -X github.com/hyperledger/fabric/common/metadata.BaseDockerLabel=org.hyperledger.fabric -linkmode external -extldflags '-static -lpthread'" \
        && go clean \
        && cp $FABRIC_HOME/orderer/orderer.yaml $ORDERER_CFG_PATH/ \
        && cp -r $FABRIC_HOME/msp/sampleconfig/* $ORDERER_GENERAL_LOCALMSPDIR \
        && cp $FABRIC_HOME/common/configtx/tool/configtx.yaml $ORDERER_CFG_PATH

CMD ["orderer"]
