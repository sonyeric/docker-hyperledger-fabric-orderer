Hyperledger Fabric Orderer
===
Docker images for [Hyperledger fabric orderer](https://github.com/hyperledger/fabric).

# Supported tags and respective Dockerfile links

* [`latest` (latest/Dockerfile)](https://github.com/yeasy/docker-hyperledger-fabric-orderer/blob/master/Dockerfile): tracking master branch.

For more information about this image and its history, please see the relevant manifest file in the [`yeasy/docker-hyperledger-fabric-orderer` GitHub repo](https://github.com/yeasy/docker-hyperledger-fabric-orderer).

If you want to quickly deploy a local fabric cluster without any configuration and vagrant, please refer to [Start hyperledger clsuter using compose](https://github.com/yeasy/docker-compose-files#hyperledger).

# What is docker-hyperledger-fabric-orderer?
Docker image with hyperledger fabric orderer deployed. 

# How to use this image?
The docker image is auto built at [https://registry.hub.docker.com/u/yeasy/hyperledger-fabric-orderer/](https://registry.hub.docker.com/u/yeasy/hyperledger-fabric-orderer/).

## In Dockerfile
```sh
FROM yeasy/hyperledger-fabric-orderer:latest
```

# Which image is based on?
The image is built based on [Hyperledger Fabric Base](https://hub.docker.com/r/yeasy/hyperledger-fabric-base) image.

# What has been changed?
## install hyperledger fabric orderer
Install hyperledger fabric and build the orderer 

# Supported Docker versions
This image is officially supported on Docker version 1.7.0+.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# Known Issues
* N/A.

# User Feedback
## Documentation
Be sure to familiarize yourself with the [repository's `README.md`](https://github.com/yeasy/docker-hyperledger-fabric-orderer/blob/master/README.md) file before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/yeasy/docker-hyperledger-fabric-orderer/issues).

You can also reach many of the official image maintainers via the email.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/yeasy/docker-hyperledger-fabric-orderer/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
