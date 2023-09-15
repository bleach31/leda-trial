# leda-trial

https://eclipse-leda.github.io/leda/



Run QEMU on Linux:

```
cd leda/eclipse-leda-qemu-x86_64
./run-leda.sh
```
Login as `root`` without password on login prompt

1. ブラウザでAzure IoT Hubを作成する。
1. sdv-provisionを実行
1. hを押して、接続文字列を入力。接続文字列はこんな感じ。HostNameはAzure IoT Hubで作った名前、DeviceIDはsdv-provisionコマンドで生成されモノに置き換えること。`HostName=leda-test.azure-devices.net;DeviceId=52-54-00-12-34-56`
1. Azure側でデバイスの作成 https://eclipse-leda.github.io/leda/docs/device-provisioning/script-provisioning/#azure-portal

1. 残念ながら、Gitpod内のQEMUから外のインターネットにでれてない様子
```
root@qemux86-64:~# sdv-health
[SDV Info]
  * OS Release:             : Eclipse Leda 2023 (Dracon)
  * Image Version:          : Eclipse Leda v0.1.0-M2
  * Build Time:             : 20230504070553
-----------------------------------------------------------
[CAN Status]
  * can0                    : OK
-----------------------------------------------------------
[SDV Ports]
  * OpenSSH                 : OK         { :::22 }
  * Kanto CM                : OK         { /run/container-management/container-management.sock}
  * Mosquitto Server        : OK         { 0.0.0.0:1883 ::1:1883 }
-----------------------------------------------------------
[SDV Services]
  * containerd              : OK
  * rauc                    : OK
  * container-management    : OK
[SDV Optional Services]
  * sshd.socket             : OK
  * systemd-networkd        : OK
  * systemd-timesyncd       : OK
-----------------------------------------------------------
[Kanto CM Containers]
  * cloudconnector                           : OK
  * databroker                               : OK
  * vum                                      : OK
  * sua                                      : OK
-----------------------------------------------------------
[Kanto CM Containers (OPTIONAL)]
  * seatservice-example                      : OK
  * hvacservice-example                      : OK
  * feedercan                                : OK
  * otelcol-sdv-exporter                     : WARNING (NOT FOUND)
  * otelcol-sdv-agent                        : WARNING (NOT FOUND)
-----------------------------------------------------------
[SDV Connectivity]
  * Ping [Internet]         : FAILED!    (error: 1)      (ping 1.1.1.1)
  * DNS Lookup [Internet]   : OK         (172.217.20.206)
  * Cloud Connector         : FAILED!
  * Device ID:              : FAILED!    (1)
-----------------------------------------------------------
```