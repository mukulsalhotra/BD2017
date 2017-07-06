## kdc.conf


```
[root@ip-172-31-4-194 krb5kdc]# cat kdc.conf
[kdcdefaults]
 kdc_ports = 88
 kdc_tcp_ports = 88

[realms]
 EU-CENTRAL-1.COMPUTE.INTERNAL = {
  #master_key_type = aes256-cts
  acl_file = /var/kerberos/krb5kdc/kadm5.acl
  dict_file = /usr/share/dict/words
  max_renewable_life = 7d
  max_life = 1d
  max_renewable_life = 7d
  max_life = 1d
  max_renewable_life = 7d
  max_life = 1d
  admin_keytab = /var/kerberos/krb5kdc/kadm5.keytab
  supported_enctypes = aes256-cts:normal aes128-cts:normal des3-hmac-sha1:normal arcfour-hmac:normal des-hmac-sha1:normal des-cbc-md5:normal des-cbc-crc:normal
  default_principal_flags = +renewable, +forwardable
  default_principal_flags = +renewable, +forwardable
  default_principal_flags = +renewable, +forwardable
 }
[root@ip-172-31-4-194 krb5kdc]# 

```