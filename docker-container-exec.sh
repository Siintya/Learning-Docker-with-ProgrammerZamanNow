# Masuk ke Container
$ docker container exec -i -t <container_Id atau nama_container> /bin/bash
keterangan:
* -i : argument interaktif, menjaga input tetap aktif
* -t : argument untuk alokasi pseudo-TTY (terminal akses)
* /bin/bash contoh kode program didalam container

contoh:
$ docker container exec -i -t contohredis01 /bin/bash
# cd /
# ls
# redis-cli
> set sintya "Ajeng Shintya"
OK
> get sintya
"Ajeng Shintya"
> exit