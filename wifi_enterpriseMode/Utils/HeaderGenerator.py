from string import Template
import binascii
from cryptography import x509
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.backends import default_backend
import sys

def make_sublist_group(lst: list, grp: int) -> list:
    """
    Group list elements into sublists.
    make_sublist_group([1, 2, 3, 4, 5, 6, 7], 3) = [[1, 2, 3], [4, 5, 6], 7]
    """
    return [lst[i:i+grp] for i in range(0, len(lst), grp)]

def do_cert_conversion(content: bytes) -> str:
    hexstr = binascii.hexlify(content).decode("UTF-8")
    hexstr = hexstr.upper()
    array = ["0x" + hexstr[i:i + 2] + "" for i in range(0, len(hexstr), 2)]
    array = make_sublist_group(array, 10)
    return sum(len(a) for a in array ), "\n".join([", ".join(e) + ", " for e in array])

def do_key_conversion(content: bytes) -> str:
    hexstr = binascii.hexlify(content).decode("UTF-8")
    hexstr = hexstr.upper()
    array = ["0x" + hexstr[i:i + 2] + "" for i in range(0, len(hexstr), 2)]
    array = make_sublist_group(array, 10)
    return sum(len(a) for a in array ), "\n".join([", ".join(e) + ", " for e in array])

def create_header(length : str, array: str):
    certHeaderTemplate=Template("""
    /*GENERATED FILE*/
    
    static const unsigned char $name[] =
    {
    $hexArray
    };
    /* size is $size */
    static const int sizeof_$name = sizeof($name);
    
    """)
    with open('%s.h' %sys.argv[3], 'w') as file: 
        file.write(certHeaderTemplate.substitute(hexArray=array,size=length,name=sys.argv[3]))


if sys.argv[1] == 'cer' :
    if sys.argv[4] == 'der' :
        with open(sys.argv[2], "rb") as certfile:
            certData=certfile.read()
            cert = x509.load_pem_x509_certificate(certData, default_backend())     
        cert_der = cert.public_bytes(serialization.Encoding.DER)
        cer_length , cerArray=do_cert_conversion(cert_der)
        create_header(cer_length,cerArray)

    elif sys.argv[4] == 'pem' :
        crt_file = open(sys.argv[2], "r")
        lists = crt_file.readlines()
        string = ''.join(map(str, lists))
        string=string.encode("UTF-8") 
        s = string.hex()
        cer_length , cerArray=do_cert_conversion(bytes.fromhex(s))
        create_header(cer_length,cerArray)
elif sys.argv[1] == 'key' :
    if sys.argv[4] == 'der' :    
        with open(sys.argv[2], "rb") as keyfile:
            private_key = serialization.load_pem_private_key(
                keyfile.read(),
                password=None,
                backend=default_backend()
            )
        key_der = private_key.private_bytes(
                serialization.Encoding.DER,
                serialization.PrivateFormat.TraditionalOpenSSL,
                serialization.NoEncryption()
            )
        key_length , keyArray=do_key_conversion(key_der)
        create_header(key_length,keyArray)
    elif sys.argv[4] == 'pem' :
        crt_file = open(sys.argv[2], "r")
        lists = crt_file.readlines()
        string = ''.join(map(str, lists))
        string=string.encode("UTF-8") 
        s = string.hex()
        key_length , keyArray=do_key_conversion(bytes.fromhex(s))
        create_header(key_length,keyArray)

