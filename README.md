# AtoQ

**A**zerty **to** **Q**werty :  Pour convertir une chaîne de caractères à taper sur un clavier azerty vers une console distante qwerty (us)

## Genèse

Il arrive qu'on se retrouve dans une situation où, comme on est des bons gars, on a mis un mot de passe de ouf sur le compte root (36 caractères alphanumériques, spéciaux, etc ... ) et que malheureusement on s'est coupé l'herbe sous le pied en perdant l'accès ssh via une cagade sshd ou iptables ;-) . 

Il ne reste plus que l'accès via console distante...qui est évidemment en QWERTY ! Le copier-coller n'étant pas permis bien sûr, si t'as un clavier sous la main ça va aller, sinon c'est parti pour de longues minutes à faire ta tête de Gollum, à tâtonner, corriger, réessayer... 

![](https://github.com/6r3g/atoq/blob/main/gif/gollum-atoq.gif)

J'ai pas réussi à trouver un tool sur ce souci spécifique, qu'on est certainement nombreux à avoir expérimenté. 

Un vieux [post](https://linuxtrack.net/viewtopic.php?id=1380) de 2015 (bash + sed) m'a sorti des ronces pour ce coup si, mais ne gère pas tout les caractères.


## Exemple

![](https://github.com/6r3g/atoq/blob/main/gif/atoq_example.gif)
