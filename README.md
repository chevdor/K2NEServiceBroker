[![Stories in Ready](https://badge.waffle.io/k2ne/k2neservicebroker.png?label=ready&title=Ready)](https://waffle.io/k2ne/k2neservicebroker)
[![Build Status](https://travis-ci.org/chevdor/K2NEServiceBroker.svg?branch=ci)](https://travis-ci.org/chevdor/K2NEServiceBroker)

# K2NE ServiceBroker

## Introduction

The K2NE Service Broker provides common functionality that is used by a lot of projects, but is not provide by K2 out of the box.

## Installation

The installation using chocolatey makes it very simple:

	cinst K2NEServiceBroker

NOTE: The package is currently not hosted online but it will build automatically when you build the solution. Copy the nupkg in your repository and enjoy it.

## Broker methods

### Client API

#### Worklist

* Get Worklist: retrieves the worklist of the current user

#### Worklist item

*  Release Worklist Item: release a worklist item using its S/N

### Management API

#### Worklist

* Get Worklist


#### Error Log

* Get Errors
* Get Retry Process Instance

### Other

#### Identity

* Read Workflow Client Identity
* Read Thread Identity


## Disclaimer

The code is provided as is, meaning that it's a true open source project. Use it, be happy. Find issues? Please report them or even better, submit patches/pull requests! Share!
