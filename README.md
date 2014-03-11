# vagrant-centos65-x86_64-gitolite

vagrant recipe for installing gitolite server

## Installation

```
$ git clone https://github.com/mattn/vagrant-centos65-x86_64-gitolite
$ cd vagrant-centos65-x86_64-gitolite
$ vagrant init
$ cp /path/to/your/ssh/public/key/id_rsa.pub .vagrant
$ vagrant up
```

## Create gitolite repository

```
$ git clone ssh://gitolite@127.0.0.1:2222/gitolite-admin.git 
$ cd gitolite-admin
$ vi conf/gitolite.conf
```

Add your repository

```
repo    gitolite-admin
        RW+     =   id_rsa

repo    testing
        RW+     =   @all

repo    example
        RW+     =   @all
```

```
$ git commit -m "Add example" && git push
```

Clone example

```
$ git commit -m "Add example"
$ git clone ssh://gitolite@127.0.0.1:2222/example.git
$ cd example
$ echo ﾊｧﾊｧ > poem.txt
$ git add poem.txt && git commit -m 'First ﾊｧﾊｧ'
$ git push
```

## Author

Yasuhiro Matsumoto (a.k.a mattn)
