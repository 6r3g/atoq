#!/usr/bin/env python3
# -*- coding: utf-8 -*-

print("\x1b[34m[#] AtoQ - AZERTY vers QWERTY")
print("[#] Permet, par exemple, de convertir la frappe d'un mot de passe ")
print("[#] depuis un clavier AZERTY sur une console distante en QWERTY (US)\x1B[m")
print("\x1b[31m[!] Le cas particulier du ~ sera représenté comme ceci [Maj+²]\x1B[m")
print("\x1b[31m[!] Le symbole € n'est pas géré, je vois pas comment...Bonne chance !\x1B[m")

inp_str = input("\x1b[32m[?] Chaîne de caractères à convertir  : \x1B[m")
# atoq_dict => 'frappe_fr': 'frappe_us'
inp_str_array = list(inp_str)
atoq_dict = { '`': '²','1': '&','2': 'é','3': '"','4': '\'','5': '(','6': '-','7': 'è','8': '_','9': 'ç','0': 'à','-': ')',
             '~': '\x1b[31m[Maj+²]\x1B[m','!': '1','@': '2','#': '3','$': '4','%': '5','^': '6','&': '7','*': '8','(': '9',')': '0','_': '°',
             'q': 'a','w': 'z','[': '^',']': '$',
             'Q': 'A','W': 'Z','{': '¨','}': '£',
             'a': 'q',';': 'm','\'': 'ù','\\': '*',
             'A': 'Q',':': 'M','"': '%','|': 'µ',
             'z': 'w','m': ',',',': ';','.': ':','/': '!',
             'Z': 'W','M': '?','<': '.','>': '/','?': '§',
             '€': '\x1b[31m€\x1B[m'
}

converted_str = ""
for i in inp_str_array:
    for key, value in atoq_dict.items():
        if i == key:
            i = value
            break 
    converted_str += i
    
banner_out = """\x1b[32m[=] Tapes ça sur ton clavier (AZERTY) :\x1B[m"""

print("%s %s" % (banner_out, converted_str))
