# Provisioning Template

## Command

- often used command [1][2]

```shell
vagrant init # create vagrantfile
vagrant up # start vm
vagrant ssh # access to vm using ssh
vagrant destroy # delete vm
```

- apply updated vagrantfile to vm [3]

```shell
vagrant halt # stop vm
vagrant up --provision
```

- apply provision shell script to running vm

```shell
vagrant provision
```

## Todo

- [x] init vagrant
- [x] set docker
- [x] set kubernetes
- [x] set kubernetes multi nodes cluster
- [ ] k8s worker node join automation
- [ ] refactor shell script to external bash file

## Reference

- [1] <https://www.vagrantup.com/docs/vagrantfile>
- [2] <https://www.vagrantup.com/docs/cli>
- [3] <https://stackoverflow.com/questions/11161577/which-command-to-get-vagrantfile-changes-on-an-instance>

### Tutorial

- <https://ugurakgul.medium.com/creating-a-local-kubernetes-cluster-with-vagrant-ba591ab70ee2>
- <https://github.com/sysnet4admin/_Book_k8sInfra>
- <https://www.itwonderlab.com/en/ansible-kubernetes-vagrant-tutorial/>
- <https://medium.com/swlh/setup-own-kubernetes-cluster-via-virtualbox-99a82605bfcc>
