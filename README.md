### Задание 1. Яндекс.Облако
- [манифест для создания VPC и подсетей](./networks.tf)
- [манифест для создания требуемых instance](./resourse.tf)
- - создание ресурсов
```
external_ip_address_private_instance = ""
external_ip_address_public_host = "158.160.45.155"
internal_ip_address_nat_instance = "192.168.10.254"
internal_ip_address_private_instance = "192.168.20.29"
internal_ip_address_public_host = "192.168.10.32"
public_ip_address_nat_instance = "51.250.2.186"
```
- - Проверка выхода в интернет с  public host
```
vlad@public:~$ ping ya.ru
PING ya.ru (87.250.250.242) 56(84) bytes of data.
64 bytes from ya.ru (87.250.250.242): icmp_seq=1 ttl=251 time=1.08 ms
64 bytes from ya.ru (87.250.250.242): icmp_seq=2 ttl=251 time=0.436 ms
```
- - Проверка отсутсвия интернета на private host
```
vlad@private:~$ ping ya.ru
PING ya.ru (87.250.250.242) 56(84) bytes of data.
^C
--- ya.ru ping statistics ---
4 packets transmitted, 0 received, 100% packet loss, time 3057ms
```
- [манифест для создания дефолтного маршрута через IP адрес NAT host](./route.tf)
- - проверка после создания дефолтного маршрута
```
vlad@private:~$ ping ya.ru
PING ya.ru (87.250.250.242) 56(84) bytes of data.
64 bytes from ya.ru (87.250.250.242): icmp_seq=1 ttl=56 time=2.22 ms
64 bytes from ya.ru (87.250.250.242): icmp_seq=2 ttl=56 time=0.786 ms
^C
--- ya.ru ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1002ms
```