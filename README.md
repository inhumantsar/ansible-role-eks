# eks

[![Build Status](https://travis-ci.org/inhumantsar/ansible-role-eks.svg?branch=master)](https://travis-ci.org/inhumantsar/ansible-role-eks)

Sets up an EKS Cluster with some supporting resources.

## Requirements

1. An existing VPC
2. At least *two* subnets in *different AZs*
3. Time. Cluster creation and removal can take up to 20 minutes (though ~10 is normal).


## Supported Platforms

* RHEL / CentOS: 6, 7      
* Fedora: 24-28      
* Debian:
    - jesse
    - sid
    - stretch
    - buster      
* Ubuntu
    - bionic
    - artful
    - zesty
    - yakkety
    - xenial


## Variables & Defaults

These are the major variables used:

        eks_cluster_state: "present"        # set to absent to remove the cluster
        eks_cluster_name: "demo"            # make this unique
        eks_cluster_vpc: "vpc-12345678"     # must already exist
        eks_cluster_subnets: []             # need at least 2 subnets in different AZs
        eks_cluster_region: "us-west-2"     # set as appropriate

See [`defaults/main.yml`](defaults/main.yml) for more information.

## Usage

Provide an example of the role in action.

## Testing

## Dependencies

List any other roles which this one depends on and briefly explain why.

## License
[BSD](LICENSE)

## Authors
[Shaun Martin](https://github.com/inhumantsar)