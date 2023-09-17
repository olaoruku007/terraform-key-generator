resource "tls_private_key" "pvtkey" {
    algorithm = "RSA"
    rsa_bits = 4096
     
}

resource "local_file" "id_rsa" {
    filename = "./id_rsa"
    content = "${tls_private_key.pvtkey.private_key_pem}"
  
}

resource "local_file" "id_rsa_pub" {
    filename = "./id_rsa_pub"
    content = "${tls_private_key.pvtkey.public_key_pem}"
  
}

