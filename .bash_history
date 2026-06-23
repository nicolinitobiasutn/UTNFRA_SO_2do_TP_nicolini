git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
sudo chmod 666 /home/vagrant/.bash_history
source ~/.bashrc && history -a
sudo chmod 666 /home/vagrant/.bash_history
~sudo chmod 666 /home/vagrant/.bash_history
source ~/.bashrc && history -a
exit
sudo fdisk -l
sudo pvcreate /dev/sdc /dev/sdd
sudo vgcreate vg_datos /dev/sdc
sudo vgcreate vg_temp /dev/sdd
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -l 100%FREE -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo vgs
~sudo fdisk -l | grep "2 GiB"
sudo fdisk -l | grep "2 GiB"
sudo pvcreate /dev/sdb
sudo vgcreate vg_temp /dev/sdb
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap
sudo mount /dev/vg_datos/lv_docker /var/lib/docker/
sudo mount /dev/vg_datos/lv_workareas /work/
sudo mkdir -p /var/lib/docker/
sudo mkdir -p /work/
sudo mount /dev/vg_datos/lv_docker /var/lib/docker/
sudo mount /dev/vg_datos/lv_workareas /work/
[200~sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas~
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mount /dev/vg_datos/lv_docker /var/lib/docker/
sudo mount /dev/vg_datos/lv_workareas /work/
sudo systemctl restart docker
df -h | grep -E "lv_|work"
cat << 'EOF' >> /home/vagrant/RTA_Examen_20260622/Punto_B.sh
sudo groupadd 2P_2025
sudo useradd -m -s /bin/bash -G 2P_2025 prog
sudo useradd -m -s /bin/bash test
echo "prog:vagrant" | sudo chpasswd
echo "test:vagrant" | sudo chpasswd
EOF

sudo groupadd 2P_2025
sudo useradd -m -s /bin/bash -G 2P_2025 prog
sudo useradd -m -s /bin/bash test
echo "prog:vagrant" | sudo chpasswd
echo "test:vagrant" | sudo chpasswd
sudo chown prog:2P_2025 /work
sudo chmod 770 /work
cat << 'EOF' >> /home/vagrant/RTA_Examen_20260622/Punto_C.sh
sudo chown prog:2P_2025 /work
sudo chmod 770 /work
EOF

sudo userdel -r prog
sudo userdel -r test
sudo nano /usr/local/bin/AltaUser-Groups.sh
cp /usr/local/bin/AltaUser-Groups.sh /home/vagrant/RTA_Examen_20260622/Punto_B.sh
sudo /usr/local/bin/AltaUser-Groups.sh vagrant /202406/bash_script/Lista_Usuarios.txt
sudo bash /home/vagrant/RTA_Examen_20260622/Punto_B.sh vagrant /202406/bash_script/Lista_Usuarios.txt
cd /202406/docker/
~find ~ -type d -name "docker" 2>/dev/null
find ~ -type d -name "docker" 2>/dev/null
~cd /home/vagrant/UTN-FRA_SO_Examenes/202406/docker
cd /home/vagrant/UTN-FRA_SO_Examenes/202406/docker
cat << 'EOF' > Dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html
EOF

cat << 'EOF' > run.sh
#!/bin/bash
docker run -d -p 8080:80 tu_usuario_docker/web1-:latest
EOF

chmod +x run.sh
cat << 'EOF' > /home/vagrant/RTA_Examen_20260622/Punto_C.sh
cd /home/vagrant/UTN-FRA_SO_Examenes/202406/docker
docker build -t tu_usuario_docker/web1-:latest .
docker push tu_usuario_docker/web1-:latest
EOF

nano index.html
docker build -t tu_usuario_docker/web1-nicolini:latest .
docker run -d -p 8080:80 tu_usuario_docker/web1-nicolini:latest
sudo apt update && sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G docker vagrant
docker build -t tu_usuario_docker/web1-nicolini:latest .
docker run -d -p 8080:80 tu_usuario_docker/web1-nicolini:latest
curl localhost:8080
docker stop $(docker ps -q)
docker rm $(docker ps -a -q)
cd /home/vagrant/UTN-FRA_SO_Examenes/202406/docker
docker build -t tu_usuario_docker/web1-nicolini:latest .
docker run -d -p 8080:80 tu_usuario_docker/web1-nicolini:latest
curl localhost:8080
cat << 'EOF' > run.sh
#!/bin/bash
docker run -d -p 8080:80 tu_usuario_docker/web1-nicolini:latest
EOF

chmod +x run.sh
ansible --version
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt update && sudo apt install -y ansible
ansible --version
cd /home/vagrant/UTN-FRA_SO_Examenes/202406/ansible
mkdir -p roles/2do_parcial/templates
cat << 'EOF' > roles/2do_parcial/templates/datos_alumno.j2
Nombre: Tobias Ezequiel Nicolini
Division: 115
Fecha: {{ ansible_date_time.date }}
EOF

cd /home/vagrant/UTN-FRA_SO_Examenes/202406/ansible
nano roles/2do_parcial/tasks/main.yml
nano roles/2do_parcial/templates/datos_alumno.j2
nano roles/2do_parcial/templates/datos_equipo.j2
sudo ansible-playbook -i inventory/hosts playbook.yml
cat << 'EOF' > /home/vagrant/RTA_Examen_20260622/Punto_D.sh
cd /home/vagrant/UTN-FRA_SO_Examenes/202406/ansible
sudo ansible-playbook -i inventory/hosts playbook.yml
EOF

chmod +x /home/vagrant/RTA_Examen_20260622/Punto_D.sh
history -a
cd $HOME/UTNFRA_SO_2do_TP_Nicolini
ls -la $HOME
find $HOME -type d -name ".git" 2>/dev/null
cd $HOME
git clone ACÁ_VA_EL_LINK_DE_TU_REPOSITORIO_DE_LA_MATERIA
cd $HOME
git clone ACÁ_VA_EL_LINK_DE_TU_REPOSITORIO_DE_LA_MATERIA
find $HOME -type d -name "*UTNFRA_SO_2do_TP_*" 2>/dev/null
cd $HOME
git clone TU_LINK_REAL_DE_GIT_AQUÍ
cd $HOME
git clone https://github.com/wade-core/UTNFRA_SO_2do_TP_nicolinitobiasutn
cd /home/vagrant/UTN-FRA_SO_Examenes && git remote -v
cd $HOME
git clone https://github.com/upszot/UTNFRA_SO_2do_TP_nicolinitobiasutn
cd $HOME
git clone https://github.com/upszot/UTNFRA_SO_2do_TP_nicolinitobiasutn
cd $HOME
# Opción A: Con tu apellido y nombre
git clone https://github.com/upszot/UTNFRA_SO_2do_TP_NicoliniTobias
# Opción B: Solo con tu apellido
git clone https://github.com/upszot/UTNFRA_SO_2do_TP_Nicolini
history -a
# Entrar a tu repositorio (reemplazá por el nombre real de tu carpeta clonada)
cd $HOME/UTNFRA_SO_2do_TP_TU_REPOSITORIO
# ○ Copiar la carpeta /202406/ y todo su contenido
cp -r $HOME/UTN-FRA_SO_Examenes/202406/ .
# ○ Copiar la carpeta RTA_Examen_20260622 y todo su contenido
cp -r $HOME/RTA_Examen_20260622/ .
# ○ Copiar el archivo .bash_history
cp $HOME/.bash_history .
ls -la $HOME
$HOME/UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
chmod +x $HOME/UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
$HOME/UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
sudo $HOME/UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc && history -a
cd $HOME
git clone https://github.com/nicolinitobiasutn/UTNFRA_SO_2do_TP_
cd $HOME
git clone https://github.com/nicolinitobiasutn/UTNFRA_SO_2do_TP_nicolini
cd $HOME/UTNFRA_SO_2do_TP_nicolini
