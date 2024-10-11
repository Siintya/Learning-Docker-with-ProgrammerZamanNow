#1 Matikan dulu container yang menggunakan volume yang ingin kita backup
$ docker container stop mongovolume
#2 Buat folder backup $ mkdir <nama_folder>
$ mkdir backup
#3 Buat container baru dengan dua mount, volume yang ingin kita backup, dan bind mount folder dari sistem host
$ docker container create --name nginxbackup --mount "type=bind,source=/home/shintya/Learning/Docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest
#4 jalankan container tsb
$ docker conatiner start nginxbackup 
#5 Masuk ke container tsb
$ docker container exec -i -t nginxbackup /bin/bash
#6 Cek folder backup
$ ls -l
#7 Lakukan backup menggunakan container dengan cara meng-archive isi volume, dan simpan di bind mount folder.
$ tar cvf /backup/backup_02102024.tar.gz /data
#8 Delete container yang kita gunakan untuk melakukan backup.
$ docker container stop nginxbackup
$ docker container rm nginxbackup
## Testing

$ docker container start mongovolume

#*** Menjalankan container secara langsung
$ docker container stop mongovolume

$ docker container run --rm --name ubuntubackup --mount "type=bind,source=/home/shintya/Learning/Docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi-021024.tar.gz /data

$ docker container start mongovolume