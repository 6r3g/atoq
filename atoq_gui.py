#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import tkinter as tk

def convert():
    inp_str = entree_texte.get()
    # atoq_dict => 'frappe_fr': 'frappe_us'
    inp_str_array = list(inp_str)
    atoq_dict = { '`': '²','1': '&','2': 'é','3': '"','4': '\'','5': '(','6': '-','7': 'è','8': '_','9': 'ç','0': 'à','-': ')',
             '~': '~','!': '1','@': '2','#': '3','$': '4','%': '5','^': '6','&': '7','*': '8','(': '9',')': '0','_': '°',
             'q': 'a','w': 'z','[': '^',']': '$',
             'Q': 'A','W': 'Z','{': '¨','}': '£',
             'a': 'q',';': 'm','\'': 'ù','\\': '*',
             'A': 'Q',':': 'M','"': '%','|': 'µ',
             'z': 'w','m': ',',',': ';','.': ':','/': '!',
             'Z': 'W','M': '?','<': '.','>': '/','?': '§',
             '€': '€'
    }

    converted_str = ""
    for i in inp_str_array:
        for key, value in atoq_dict.items():
            if i == key:
                i = value
                break
        converted_str += i
       
    zone_resultat.delete(1.0, tk.END)
    zone_resultat.insert(tk.END, converted_str)
    zone_resultat.tag_add("rouge", "insert linestart", "insert lineend")  

fenetre = tk.Tk()
fenetre.title("AtoQ : Azerty (clavier) to Qwerty (console)")
fenetre.geometry('650x230')

info_texte = """Attention aux caractères "~" et "€" :
- "~" se fait avec : Maj+²
- "€" ... ne se fait pas, bonne chance !"""

info = tk.Label(fenetre, justify=tk.LEFT, padx = 10, pady=10, text=info_texte, font=("consolas",12), foreground="red").pack(side="bottom")

entree_texte = tk.Entry(fenetre, text="String", width=60, font=("consolas",14))
entree_texte.pack(pady=10)

bouton_afficher = tk.Button(fenetre, text="Convertir la frappe", command=convert)
bouton_afficher.pack(pady=10)

zone_resultat = tk.Text(fenetre, width=60, font=("consolas",14))
zone_resultat.pack(pady=10)

fenetre.mainloop()