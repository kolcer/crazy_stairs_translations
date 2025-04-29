local module = {}

module.gui = {}

module.gui.basic = {
["yes"] = "Oui",
["no"] = "Non",
["ok"] = "Ok",
["menu"] = "Menu",
["default"] = "Défaut",
["validate"] = "Valider",
["play"] = "Jouer",
["skip"] = "Passer\nLe Tutoriel",
["loading"] = "Chargement, Veuillez patienter...",
["mode"] = "%s\nMode",
["cd"] = "Ultime\nTemps de rechargement",
}

module.gui.switcher = {

["title"] = "Changer de serveur",

["public"] = "Serveur publique",
["private"] = "Serveur privé",
["join"] = "Rejoindre",
["friends"] = "Amis en ligne",
["refresh"] = "Rafraichissement...",
["fail"] = "Erreur de rafraichissment!",

}

module.gui.serversettings = {

["title"] = "Option du propriétaire",

["Moderation"] = "Modération",
["rules"] = "Votre serveur, Vos règles.",
["temp"] = "Les sourdines et banissements sont temporaires",
["kick"] = "Virer",
["ban"] = "Banir",
["mute"] = "Mettre en sourdine",

["Drones"] = "Options des drones",
["DronesReadOnly"] = "Options des drones (lecture uniquement)",
["DroneEnabled"] = "Drones activés",
["DroneFix"] = "Les drones vont restaurer les escaliers",
["DroneRemove"] = "Les drones vont retirer les intersections maudites",
["DroneUnCurse"] = "Les drones vont restaurer les escaliers maudits",
["DroneMove"] = "Les drones bougent les escaliers en mode défaut",
["DroneSpin"] = "Les drones tournent les escaliers en mode défaut",
["DroneSpeed"] = "Vitesse de déplacement des drones (Niveau/seconde)",
["DroneDelay"] = "Vitesse de rotation des drones (secondes)",
["DroneMax"] = "Nombre maximum d'escaliers (Les drones vont exclusivement détruire les au dessus de cette limite)",
["DroneMin"] = "Nombre minimum d'escaliers (Les drones vont exclusivement créer en dessous de cette limite)",
["DroneBlock"] = "Chance d'intersection maudite pour chaque rencontre d'intersection vide (pourcent)",
["DroneCurse"] = "Chance d'escaliers maudits pour chaque rencontre ou création d'escaliers normaux (pourcent)",

["Tower"] = "Options de la tour",
["TowerReadOnly"] = "Options de la tour (Lecture uniquement)",
["InfMode"] = "Mode infini (Ne peuventpas être changé lors d'une course ou d'une régénération)",
["CasualPlayers"] = "Autoriser les joueurs à lancer des sorts",
["Regeneration"] = "Régénération automatique des escaliers après la purge d'un wicked (Ne fonctionnera pas dans le mode infini)",
["EvenLevels"] = "Niveau pairs limités",
["OrbMoves"] = "L'orbe de fin change de position",
["InfRegeneration"] = "Régénération automatique des escaliers sur un nouveau serveur, les niveaux de la tour change et après la course infinie",
["TowerLevels"] = "Niveaux de la tour (Ou niveaux actifs dans le mode infini). Ne peuventêtre changé durant une course ou une régénération",
["RaceDuration"] = "Durée maximum d'une course. N'affectera pas la course actuelle. (secondes)",
["InfStart"] = "Intervale initiale des tours du mode infini (2 niveaux sont créés chaque tour) (secondes)",
["InfReduction"] = "Réduction de l'intervale entre les tours du mode infini (Chaque tour est plus court) (secondes)",
["InfMin"] = "Intervale minimum des tours du mode infini (secondes)",
["Cooldown"] = "Temps de rechargement des évènements et des rigs (secondes)",

}

module.gui.shop = {

["title"] = "Magasin de CRAZY STAIRS",

["chameleon"] = "Le chameleon peuventchanger de classe pendant qu'il grimpe.",
["spectre"] = "Le Spectre est basé sur la téléportation meilleur pour les parties seules.",
["mana"] = "Augmente la votre capacité de stockage de mana de 10.",

["3tokens"] = "Débloque un sort ou utilise jusqu'a 3 sorts ultimes.",
["30tokens"] = "Débloque 10 sorts ou utilise jusqu'a 30 sorts ultimes.",
["300tokens"] = "Suffisament pour débloquer tous les sorts avec 153 tokens en réserve.",

["3TOKENS"] = "3 Tokens multiples (R$%d)",
["30TOKENS"] = "30 Tokens multiples (R$%d)",
["300TOKENS"] = "300 Tokens multiples (R$%d)",
["SPECTRE PASS"] = "Passe de jeu Spectre. (R$%d)",
["MANA PASS"] = "Passe de jeu 20 mana. (R$%d)",
["CHAMELEON PASS"] = "Passe de jeu Chameleon. (R$%d)",

}

module.gui.spellbar = {

["share"] = "Partage\nTon mana",
["nocasual"] = "Seulement les coureurs peuvent lancer des sorts",

} 

module.gui.stats = {

["total"] = "Montées totales: %d / Victoires: %d",
["class"] = "Montées en %s: %d",
["best"] = "Meilleur %s Temps: %.2f",
["na"] = "N/A",

}

module.gui.timedspell = {

["possessed"] = "Possédé! (Trouve du mana pour te libérer)",
["released"] = "Relaché !",
["timesup"] = "Le temps est écoulé...",

}


module.gui.activatecham = {

["title"] = "Active le Chameleon",
["body"] = "Veux-tu activer le mode Chameleon ?\nIl restera actif le reste de la montée."

}

module.gui.caceltimed = {

["title"] = "Annule un sort chronométré",
["body"] = "Veut-tu annuler ce sort chronométré? Les tokens ne seront pas remboursés."

}

module.gui.climbtimer = {

["prompt"] = "Grimpe les\nescaliers!",
["floor"] = "étage",
["last"] = "Dernier temps",

}

module.gui.codes = {

["title"] = "Entrez le code",
["body"] = "Entre ton code ici:",
["prompt"] = "(code)",
["button"] = "Valider",

}

module.gui.gauges = {

["prompt"] = "Sauter pour continuer, Cliquez encore pour annuler.",

["found"] = "%d escaliers trouvés (%.1f%% Rempli)",
["special"] = "%d spéciaux (%.1f%%)",
["affected"] = "%d escaliers vont être affectés (%.1f%%)",
["cursed"] = "%d intersections maudites trouvées (%.1f%%)",
["fill"] = "%d escaliers vont être créés (%.1f%%)",
["purge"] = "%d objets seront détruits (%.1f%%)",
["normal"] = "%d sont déjà normaux (%.1f%%)",
["restore"] = "%d escaliers seront réstaurés (%.1f%%)",
["parpass1"] = "%d malédictions sont dans le chemin (%.1f%%)",
["parpass2"] = "%d contours existent déjà (%.1f%%)",
["parpass3"] = "%d contours vont être créés (%.1f%%)",

}

module.gui.jukebox = {

["title"] = "Juke-box",

["master"] = "Volume général",
["default"] = "(utilisant le volume général)",
["climb"] = "Musique de montée",
["endgame"] = "Musique de fin",
["failed"] = "[Erreur de chargement]",

}

module.gui.results = {

["title"] = "Résultats de la course",

["place"] = "Place",
["name"] = "Nom",
["level"] = "Niveau maximum",
["time"] = "Temps",
["rank"] = "Rang",
["not"] = "N/A",
[1] = "Gagnant",
[2] = "2ème",
[3] = "3ème",
[4] = "4ème",
[5] = "5ème",
[6] = "6ème",
[7] = "7ème",
[8] = "8ème",
[9] = "9ème",
[10] = "10ème",
[11] = "11ème",
[12] = "12ème",

}

module.gui.racetimer = {

["gather"] = "Tu n'es pas\ndans la course.",
["race"] = "Course\nTerminée!",
["inf"] = "éliminé!",
["off"] = "Course\nChronomètre.",
["wait"] = "Dans la course",
["on"] = "Rang",

}

module.gui.ranks = {

["title"] = "Votre rang",

--none
["none_1"] = "Vous n'avez pas choisi de classe!",
["none_2"] = "Vous n'avez accès à aucun sort!",
["none_3"] = "Sautez sur un morphe(au milieu de la carte) - pour changer de classe",
	
--shared
["higher"] = "Rang supérieur acquis",
["current"] = "Votre rang actuel",
["lower"] = "Rang non-acquis",

["more"] = "Vous avez besoin de %d plus de montées en %s pour obtenir ce rang.",
["done"] = "Vous avez déjà obtenu ce rang. Tous les effets des rangs inférieurs seront ajoutés au rang actuel.",
["max"] = "C'est le rang maximum. Vous avez %d montées en %s.",

["PATRON"] = {
	"C'est votre premier rang de PATRON.",
	"Vous obtiendrez du mana bonus, dès que les drones sont en mode PATRON.",
	"Si quelqu'un utilise un sort invocateur, votre mana se remplira.",
	"Vos liens resteront deux fois plus longtemps (120s).",
	"Vos portails resteront deux fois plus longtemps (120s).",
	"Le coût du sort appeler l'orbe est réduit à 2 mana.",
	"Votre sort invocateur durera 50% plus longtemps (90s).",
	"Si vous n'avez plus de mana, sautez sur une plate-forme pour être bénit de 1 mana.",
	"l'orbe appelée traversera deux fois plus vite.",
}, 
["JOKER"] = { 
	"C'est votre premier rang de JOKER.",
	"Vous obtiendrez du mana bonus, dès que les drones sont en mode JOKER.",
	"Si quelqu'un utilise un sort retournement, Votre mana se remplira.",
	"Les escaliers disco n'auront aucun effet sur vous.",
	"Vous pouvez maintenant voir tous les escaliers invisibles. Vous avez l'option pour ne pas les révéler.",
	"Vous pouvez maintenant détecter les plate-formes piège et les faux escaliers.",
	"Votre sort retournement durera 50 plus longtemps (90s).",
	"Vous pouvez maintenant marcher sur les faux escaliers.", 
	"Vous obtiendrez du mana bonus, quET quelqu'un active le moindre piège. (seulement une fois par piège par joueur)",
},
["WICKED"] = {
	"C'est votre premier rang de WICKED.",
	"Vous obtiendrez du mana bonus, quET les drones seront en mode WICKED.",
	"Si quelqu'un utilise un sort cintreuse, Votre mana se remplira.",
	"Vous pouvez maintenant marcher sur les parcours, juste comme les escaliers normaux.",
	"Le sort détruire en dessous est maintenant gratuit.",
	"Vous obtiendrez du mana bonus en détruisant le moindre escalier spécial.",
	"Votre sort cintreuse durera 50% plus longtemps (90s).",
	"Vous avez maintenant l'option pour éviter d'activer les Wicked Rigs en dessous.",
	"You can now destroy cursed stairs.",
},
["SPECTRE"] = { 
	"C'est votre premier rang de SPECTRE.",
	"Vous obtiendrey du mana bonus, quET les drones seront en mode SPECTRE.",
	"Si quelqu'un utilise un sort chatoyance, votre mana se remplira.",
	"Vous obtiendrez un mana en plus quET votre fantôme collectera un cristal.", 
	"Le sort Dé-ghostifier est maintenant gratuit.",
	"Vous pouvez maintenant finir la montée, en atteignant l'orbe de fin avec votre fantôme.",
	"votre sort chatoyance durera 50% plus longtemps (90s).",
	"Vous avez maintenant l'option pour éviter d'activer les Spectre Rigs en dessous.", 
	"Vous pouvez maintenant marcher sur les escaliers fantôme.",
},
["CHAMELEON"] = { 
	"C'est votre premier rang de CHAMELEON. Les bonus du rang actuel est encore appliqué.",
	"EXCEPTION! Vous allez SEULEMENT obtenir du mana, dès que les drones sont en mode CHAMALEON.",
	"Changer de classe est beaucoup plus rapidement maintenant.",
	"Vos mains vont briller d'une couleur violette, déguisant vos motifs.",
	"les sorts faux escalier et apparition d'escalier vont tous les deux avoir un effet violet.",
	"vous pouvez maintenant utiliser les sorts rejetés descendre un escalier, pont-levis et escaliers croisés.",
	"Vous pouvez maintenant utiliser les sorts rejetés escaliers derformés et pont-levis supérieur.",
	"le changement de classe est maintenant transparent.",
	"Vous pouvez maintenant utiliser le sort RIG mystère. (Tokens multiples requis)",
},
["MUGGLE"] = { 
	"C'est votre premier rang de MUGGLE.",
	"Votre temps de rechargement de saut est réduit de 0.125s.",
	"Votre temps de rechargement de saut est réduit de 0.25s.",
	"Votre temps de rechargement de saut est réduit de 0.375s.",
	"Votre temps de rechargement de saut est réduit de 0.5s.",
	"Votre vitesse de marche est augmentée de 10%.",
	"Votre vitesse de marche est augmentée de 20%.",
	"Votre vitesse de marche est augmentée de 30%.",
	"Votre puissance de saut est augmentée de 20%.",
},
["KEEPER"] = {
	"C'est votre premier rang de KEEPER.",
	"Vous obtiendrez du mana bonus, dès que les drones sont en mode KEEPER.",
	"Si quelqu'un utilise un sort ascension, Votre mana se remplira.",
	"Les sorts mouvement au hasard et les Keeper Rigs que vous activerez, ne vont jamais entrainer les escaliers en dessous.",
	"Vous pouvez maintenant bouger les escaliers renversés.",
	"Votre sort de restoration est maintenant gratuit.", 
	"Votre sort ascension durera 50% plus longtemps (90s).",
	"Vous avez maintenant l'option pour éviter d'activer les Keeper Rigs en dessous.",
	"Vous pouvez maintenant restorer les escaliers maudits et les intersections maudites.",
},
["HACKER"] = { 
	"C'est votre premier rang de HACKER.",
	"Vous obtiendrez du mana bonus, dès que les drones sont en mode HACKER.",
	"Si quelqu'un utilise un sort exploitation de la vitesse, Votre mana se remplira.",
	"Les escalators descendants ne seront pas actif, lorsque vous êtes dessus.",
	"Votre sort Dash horizontal est maintenant 50% plus rapide.",
	"Votre sort passer à travers l'escalier au dessus est maintenant 50% plus rapide.",
	"Si vous n'avez plus de mana, sautez sur une plate-forme pour vous hacker 1 mana.", 
	"Vous avez maintenant l'option pour éviter d'activer les Hacker Rigs en dessous.",
	"Si il y a au moin une intersection libre, lancer un sort glitch rematérialisera l'escalier proche de l'orbe.", 
},
["THIEF"] = {
	"C'est votre premier rang de THIEF.",
	"Vous obtiendrez du mana bonus, dès que les drones sont en mode THIEF.",
	"Si quelqu'un utilise un sort braquage, Votre mana se remplira.",
	"Votre passe latéral durera deux fois plus longtemps (120s).",
	"Votre passe vertical durera deux fois plus longtemps(120s).",
	"Vous pouvez maintenant voler tous les escaliers, sauf les escaliers maudits.",
	"Votre sort braquage durera 50% plus longtemps(90s).",
	"Si vous n'avez plus de mana, Sautez sur une plate-forme pour récupérer un mana de votre réserve.", 
	"Vous pouvez maintenant garder 2 escaliers volés au même moment.",
},
["ARCHON"] = {
	"C'est votre premier rang de ARCHON.",
	"Vous obtiendrez du mana bonus, dès que les drones sont en mode ARCHON.",
	"Si quelqu'un utilise un sort Séparateur, Votre mana se remplira.",
	"Vous pouvez maintenant lancer le sort Détruire une division sur une plate-forme.",
	"Votre sort Détruire une division est maintenant gratuit.",
	"Les divisions ne vont jamais vous téléporter en dessous.",
	"Votre sort séparateur durera 50% plus longtemps (90s).",
	"Vous pouvez maintenant utiliser le sort diviser un escalier sur un escalier déjà divisé.",
	"Vous avez l'option pour désactiver la téléportation de toutes les divisions sauf les divisions verticales.",
},
["DRIFTER"] = {
	"C'est votre premier rang de DRIFTER.",
	"Vous obtiendrez du mana bonus, dès que les drones sont en mode DRIFTER.",
	"Si quelqu'un utilise un sort montant, Votre mana se remplira.",
	"Vos plate-formes de mouvement vertical apparateront et bougeront 50% plus rapidement.",
	"Vous pouvez maintenant tourner les escaliers dérivés.",
	"Vous pouvez maintenant booster les dérives verticales avec les deux sort montant et dérive verticale.",
	"Votre sort montant durera 50% plus longtemps (90s)",
	"Vous avez l'option pour éviter les Drifter Rigs en dessous.",
	"Vous pouvez maintenant booster les dérives verticales avec les deux sort montant et dérive verticale deux fois.",
},
["HERETIC"] = {
	"C'est votre premier rang de HERETIC.",
	"Vous obtiendrez du mana bonus, dès que les drones sont en mode HERETIC.",
	"Si quelqu'un utilise un sort Malédiction, Votre mana se remplira.",
	"Si vous n'avez plus de mana, vous pouvez toucher des escaliers maudits pour les restorer et obtenir 1 mana.",
	"Vous êtes maintenant immunisé au Heretic Rigs.",
	"Vous pouvez maintenant utiliser le sort clignotement pour restorer une intersection maudite.",
	"Votre sort Malédiction durera 50% plus longtemps (90s)",
	"Les sorts Créer un escalier maudit et Malédiction pourront maintenant détruire les escaliers maudits.",
	"Vous obtiendrez du mana bonus à chaque fois que quelqu'un est possédé.",
},


}

module.gui.reshuffle = {

["title"] = "Le sort Changement d'escaliers",

["body"] = "Voulez vous éviter les collisions des escaliers ? Si non, chaque escalier dans le chemin sera détruit.",

}

module.gui.multitokens = {

["title"] = "Choisissez vos tokens",

["info"] = "Vous avez besoin de 3 tokens pour débloquer un sort.",
["notokens"] = "Vous n'avez plus de token multiple restant.",
["nopass"] = "Pas de passe de jeu",

}

module.gui.feedback = {

["title"] = "Envoyez un commentaire",

["prompt"] = "Cliquez ici pour envoyer un commentaire au propriétaire! (20 charactères minimum.)",
["send"] = "Envoyer",
["locked"] = "Bloqué",

}

module.gui.settings = {

["title"] = "Options du jeu",

["ANIM1"] = "Options\nD'animation",	
["ANIM2"] = "Options\nD'animation extra",
["MISC"] = "Options\nDiverses",
["INTERFACE"] = "Options\nD'interface",	

["size"] = "Montre la taille d'animation",
["color"] = "Montre la couleur d'animation",
["escalator"] = "Montre les animations des escalators",
["sanctuary"] = "Montre les animations des sanctuaires",
["list"] = "Montre la liste animée des joueurs",
["ghosts"] = "Animations des fantômes",
["distance"] = "Augmente la distance maximale d'animation",
["morph"] = "Montre l'animation de morph en utilisant Deceiver ou Usurper",
["billboard"] = "Montre ton propre avatar dans le panneau d'affichage",
["rank"] = "Montre ton propre rôle dans le panneau d'affichage",
["switchback"] = "Retourne automatiquement aux sorts normaux après avoir utilisé un sort ultime",
["safecancel"] = "Montre une fenêtre de confirmation en annulant un sort chronométré",
["multi"] = "Montre une fenêtre de selection des multi tokens après la montée",
["kchoices"] = "Montre les flèches de selection de la direction pour le Keeper (Ne fonctionnera pas sur Xbox)",
["achoices"] = "Montre les flèches de selection de la direction pour le Archon (Ne fonctionnera pas sur Xbox)",
["stats"] = "Montre des stats suplémentaires en lançant un sort Rig et un sort évènement",

}

module.gui.gameover = {}

module.gui.gameover.results = {

["class"] = "Votre classe",
["time"] = "Votre temps de montée",
["climbs"] = "Montées acquises",
["tokens"] = "Tokens acquis",
["rank"] = "Votre rang actuel",

}

module.gui.gameover.messages = {

["PATRON"] = {
	"Aider, protèger et créer",
	"Ces nouveaux ont besoin de notre aide",
	"Il n'y a aucun espoir sans nous Patrons",
	"11 sur 10 sur l'échelle de gentillesse",
	"Partager c'est faire attention",
	"Il n'y a jamais trop d'escaliers",
	"Il n'y a pas de je dans une équipe, mais il y a définitivement un Patron",
	"Tu ne peux pas avoir une cage d'escalier sans escaliers",
	"Un autre travail bien fait",
},
["JOKER"] = {
	"Tromper, embrouiller et rire",
	"Cette cage d'escalier est une blague",
	"Pourquoi aussi sérieux?",
	"HA! HA! HA!",
	"Relax et regarde les tomber",
	"T'es enragé frère?",
	"Tu connais les règles, et moi aussi",
	"Ce serait ennuyant sans moi",
	"Les faux escaliers sont vrai",
},
["WICKED"] = {
	"Empêcher, bloquer et détruire",
	"Je ne suis pas méchant, il y a juste trop d'escaliers",
	"Ces escaliers doivent partir",
	"Regarder le monde brûler",
	"Cette cage d'escaliers est plus belle sans escaliers",
	"I will destroy your mind, soul ET body (ET stairs)",
	"1)crée un parcour 2)Regarder les nouveaux lutter 3)Profite",
	"Toutes les choses meurent éventuellement",
	"Vide ton esprit - Mais vide la cage d'escaliers premièrement",
},
["SPECTRE"] = {
	"Disparaitre, cacher et téléporter",
	"Bien évidemment se téléporter est juste",
	"Tu ne peux pas m'attraper",
	"La beauté des escaliers fantôme est innégalée",
	"Des gens qui tombent? Pourquoi devrais-je m'en soucier?",
	"Tu peux résoudre tous tes problèmes avec la téléportation",
	"Dès que tu commences à te téléporter, Tu ne pourras pas t'arrêter",
	"Au moins je téléporte des escaliers",
	"Continuez les nuls!",
},
["MUGGLE"] = {
	"Marcher, sauter et tomber",
	"Nous n'avions pas ces magnifiques sorts dans notre stage Alpha",
	"Je le jure ces drones sont truqués",
	"Il y a toujours un chemin",
	"Le saut des escaliers est un talent",
	"Mon secret? s'arrêter et penser",
	"Je ne crois pas en la magie",
	"Des fois tu dois attendre un drone - comme dans la vraie vie",
	"Les gens utilisent des sorts? Nuls!",
},
["CHAMELEON"] = {
	"Copier, imiter et surprendre",
	"Je suis trop paresseux pour créer mes propres sorts",
	"Plus de variété - plus d'amusement",
	"Faire équipe est lent - Se morpher est rapide",
	"L'abiliter à s'ajuster est la base de la survie",
	"JE SUIS décisif, j'aime juste changer mes choix",
	"Tu as maîtrisé une classe? J'ai maîtrisé toutes les classes.",
	"Une classe seulement? Ennuyant!",
	"J'aime le chaos",
},
["KEEPER"] = {
	"Bouger, tourner et controller",
	"Arrêtez de modifier ma cage d'escaliers!",
	"Un autre succès puissant pour les Keepers",
	"Mission accomplie!",
	"J'aime l'ordre",
	"Le chaos apprivoisé",
	"Je suis la seule vraie classe",
	"Un jour je vais ranger cette tour",
	"Escaliers réparés - escaliers heureux",
},
["THIEF"] = {
	"Emprunter, utiliser et  renvoyer",
	"C'est actuellement appelé emprunter",
	"Les terres plates sont tellement magnifiques",
	"Au moins je ne vole pas les plate-formes",
	"Juste ne marchez pas sur les Thief Rigs, idiots.",
	"Genre est-ce que tu m'as vu voler quelque chose?",
	"Je suis comme robin des bois - Vole les riches et donne tout à moi-même",
	"C'est pas comme si quelqu'un verrait un escalier manquant",
	"La redistribution des escaliers empêche l'anarchie",
},
["HACKER"] = {
	"Exploiter, bugger et casser",
	"Jouer loyalement? Cela n'existe pas.",
	"Attendez! Cette cage d'escaliers n'est pas réelle... Est-ce qu'on vit dans une expérience simulée de roblox?",
	"01000101 01110011 01100011 01100001 01101100 01101001 01100101 01110010 01110011 00100000 01100110 01101111 01110101 01110011",
	"Est-ce que tu as vu la moindre règle postée ici?",
	"Je triche? Tous le monde ici triche",
	"Enfin je veux dire quelque changements ici et là - Difficilement une triche",
	"La vitesse est tout ce qui compte",
	"Les escalators pour la vie",
},
["HERETIC"] = {
	"VOUS NE POUVEZ PAS PASSER",
	"Bannir la magie noire est comme bannir l'amusement",
	"Possède les gens. Garde l'esprit supérieur rassasié.",
	"Mort et décadence",
	"Rituel noir complet",
	"Nous ne devrions pas nous restreindre",
	"Soit possédé",
	"Choisi le côté sombre - C'est plus facile que l'ilumination",
	"Pourquoi est-ce que je devrais me soucier des gens échoués?",
},
["ARCHON"] = {
	"Ouvrir un portal, ???, profiter",
	"Je maîtrisais cette cage d'escaliers",
	"Planifie à l'avance pour faire un succès",
	"étudie beaucoup et tu gagneras",
	"La capacité de couper les escaliers est une forme d'art",
	"Téléporte toi toi-même !",
	"Le gâteau est un mensonge.",
	"Il y a une téléportation pour chaque problème",
	"Tout le monde est confu!",
},
["DRIFTER"] = {
	"Surfer, dériver, et planer",
	"Qui a besoin d'escaliers de toute façon? Nous sommes dans l'espace!",
	"Volez, idiots!",
	"Surfer sur le vent solaire",
	"Il n'y a pas de bas dans l'espace - Saute sans inquiètude",
	"Dérive partout - Saute à la victoire",
	"Ne t'arrêtes pas - continue de dériver",
	"J'adore monter sur les plate-formes",
	"Continue de surfer",
},

}

module.gui.gameover.maxrank ={

["SAVIOUR"] = "Ne laisse aucun nul derrière",
["IT"] = "Pranker est la vie",
["ANNIHILATOR"] = "Détruit tout!",
["AETHER"] = "Entre dans le royaume inférieur",
["DABSFORLIF"] = "Les sorts sont surréstimés",
["USURPER"] = "J'aime juste tout les sorts",
["ADMIRAL"] = "Ordre réstoré",
["OUTLAW"] = "à moi, à moi, tout EST A MOI!",
["ZERO"] = "Rootkit installé",
["EXILED"] = "Excommunication",
["ILLUMINATI"] = "Illuminati confirmé",
["STRIDER"] = "Je vais prendre l'élévateur..",

}

module.gui.gameover.credits = {
	
"CRAZY STAIRS",
"Jeu conçu, désigné et scripté par Sleazel",
"Aide avec design - cakegirlserina",
"Models par ZielonyLeszek",
"Skyboxes par @wwwtyro's generator",
"Module de sauvegarde, DataStore2, par Kampfkarren",
"Script originel des tableaux des scores par ThatTimothy",
"TESTEURS:",
"Roloversion",
"Ondrik132",
"dabsforlif",
"iiBIuestar",
"BertValkyrie",
"TDtheTV",
"waragency",
"d4vvd",
"portalgunner",
"DragonMaster1707",
"wf_sh",
"Keysiries",
"jakmat2",
"blankeht",
"ben10beg",
"bash1234567888",
	"cakegirlserina",
	"TRADUCTIONS:",
	"English - Sleazel",
	"Polski - Sleazel",
	"Français - Alexnumbers",	
	"Italiano - Roloversion",	
	"Nederlandse - Sanderk35_2",
	"Romana - NoobMaster38271",
	"= ??? - ambronium",
	"Português - Cosmo",
	"???? - OZEPJAH",
	"??????? - NoobMaster38271",
	"Ceština - killerproXxgood",
	"bahasa Indonesia - echocentrical",
	"Español - TDtheTV",
	"Deutsch - 05_hallo",
	"Slovenský - Ondrik132",
	"Bosanski - xootynator",	"REMERICIEMENTS SPECIAUX:",
"kolcer",
"ThatTimothy",
"SerpentineKing",
"WhereDidTheSunGo",
"b3ntheplay3r2",
"TehEpix2",
"Narvog1",
"shark66655",
"MUSIQUE (APM catalog):",
"Musique d'introduction - Allure par Martin Albert Sponticcia",
"\"None\" musique de fin - Deceived par Martin Albert Sponticcia",
"Muggle music - Hyperdrive par Gary Leslie Scargill, Peter Nicholas Oldroyd",	
"Muggle endgame music - Reflections par Milan Pilar",
"Patron music - Tranquilize par Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
"Patron endgame music - Dreamers par Joseph AlexETer",
"Joker music - Crosswind par Martin Albert Sponticcia",
"Joker endgame music - Fender Stab par Steven Raymond Bush",
"Wicked music - Wicked par Daniel Jay Nielsen, Nathan Duvall",
"Wicked endgame music - Something Wicked par Cris Velasco",
"Spectre music - Reflections par Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Spectre endgame music - Cosmic Dust par Milan Pilar",
"Keeper music - Automotion par Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Keeper endgame music - Synth On The Highway par Richard Adrian Maxwell Preston",
"Hacker music - Network par Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Hacker endgame music - Descending Into Oblivion par Richard Adrian Maxwell Preston",
"Thief music - Reaching Out par Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Thief endgame music - Soaring par Richard Adrian Maxwell Preston",
"Archon music - Aperture par Paul Emons, Richard Goodliff, Ian Robson",
"Archon endgame music - Rendezvous par Paul Emons, Richard Goodliff, Ian Robson",
"Drifter music - Communique par Gary Leslie Scargill, Peter Nicholas Oldroyd, Richard Francis Adrian Brown",
"Drifter endgame music - Fragile par Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Heretic music - Mother par Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Heretic endgame music - Being Me par Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Chameleon music - Rah par Gary Leslie Scargill, Peter Nicholas Oldroyd",
"Chameleon endgame music - Midnight Runner par Richard Adrian Maxwell Preston",
"Ghost Union music - Amber Garden par Paul Emons, Richard Goodliff, Ian Robso",
"Possessed music - Dark Souls par David Arkenstone",
"Joker's disco stairs music - To The Disco par Gordon Zola",
	--"Patron's portal music - Angel's Song - Esther Dee",
	--"Patron's/Wicked's link music - Enchanted Trail (no vocals) - Heather McClelland",
	"Drifter's platform music - Radioactivity par Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
"Thanks for playing!",	
}

module.static = {

["cla_1"] = "Comment jouer?",
["cla_2"] = "Premièrement, il est vraiment recomETé de complèter le tutoriel. Si tu ne l'as pas fait, s'il te plait rejoin le jeu, sinon l'exprérience peut devenir très confusante.",
["cla_3"] = "Le but du jeu est d'atteindre le haut de la tour et collecter l'orbe d'énergie flottante. Premièrement, choisis une classe en sautant sur un des cercles fluo au milieu de la carte.",
["cla_4"] = "Quand tu es heureux avec ton choix, collecte des formes vollantes pour remplir ton mana et monter les escaliers. Utilise les sorts de ta classe pour t'aider dans la montée.",
["cla_5"] = "Comment utiliser des sorts?",
["cla_6"] = "Chaque sort a un coût en mana qui sera requis pour executer le sort. Quand tu as suffisament de mana, clique sur le sort. Tes mains vont commencer à luire, indiquant une utilisation avec succès.",
["cla_7"] = "Après l'utilisation, le sort a toujours besoin d'être exécuté. Tous les sorts sont exécutés en sautant. Dépendant de la vitesse, tu aurez besoin de sauter sur une plate-forme ou des escaliers. Des flèches guide vont apparaître, pour vous aider avec l'exécution.",
["cla_8"] = "Dès que tu as complété la montée, tu recevras 3 tokens de sorts, qui vont te laisser débloquer un sort. Complète la montée encore pour débloquer plus de sorts. Tu ne peux pas utiliser de tokens d'une classe pour débloquer un sort d'une autre.",
["cla_9"] = "Comment utiliser des sorts ultimes?",
["cla_10"] = "Premièrement, tu as besoin de débloquer tous les sorts normaux pour avoir accès aux sorts ultimes. Les sorts ultimes n'ont pas besoin de tokens pour les débloquer eux-mêmes, mais utilisent des tokens au lieu de mana.",
["cla_11"] = "Complète la montée suffisament de fois pour débloquer tous les sorts normaux. Tu as peutêtre envie de gagner une course pour des tokens supplémentaires. Il y a aussi une option pour acheter des tokens. Une fois débloquée, clique le bouton le plus à gauche ou presse 'C'",
["cla_12"] = "Certain sorts ultimes sont chronométrés et n'ont pas besoin d'exécution. S'il-te-plaît lit plus d'informations aux guildes de classes pour en apprendre plus sur un certain sort ultime, avant l'utilisation. Annuler un sort chronométré ne redonnera pas de tokens",

["pro_1"] = "TOUR PRO",
["pro_2"] = "Restrictions de niveaux pairs",
["pro_3"] = "Dans la tour pro, certain sorts de plate-formes ne peuvent pas être utilisés sur des niveau pairs. Les pièges, création de portail, téléportation verticale, escaliers spiral et téléportation hasardeuse ne peuvent être exécutés uniquement sur des niveaux impairs.",
["pro_4"] = "Les Drifters ne peuvent pas faire dériver ces plate-formes non plus. Les plate-formes affectées sont marquées avec un cercle rouge à leur milieu.",
["pro_5"] = "Escaliers maudits",
["pro_6"] = "Dans la tour pro, les drones vont créer des escaliers maudits ou rendre les escaliers normaux en escaliers maudits au hasard. Il y as 20% de chance pour une apparition d'escalier maudit. Les flèches guide ne vont pas apparaitre proche d'escaliers maudits.",
["pro_7"] = "Les escaliers maudits sont immunisés contre la majorité des sorts. Vous ne pouvez pas vous téléporter à travers ou utilise le sort clignotement hackeur. Et en plus, tous les sorts qui devront normallement cause la destruction des escaliers maudits ne vont pas fonctionner (Comme la capacité du Keeper).",
["pro_8"] = "Seulement les Heretics et Admirals peuvent restorer les escaliers maudits. Les évènement Purge et Réstoration vont aussi détruire tous les escaliers maudits. Par contre les drones vont toujours créer des escaliers maudits dans la tour pro.",
["pro_9"] = "Intersections maudites",
["pro_10"] = "Dans la tour pro, les drones vont créer des intersections maudites au hasard. QuET un drone trouve une intersection vide, il y a 20% de chETe pour une malédiction. Les flèches guide vont se transformer en croix pour marquer les intersections maudites.",
["pro_11"] = "Les intersection maudites empêchent tous les sorts de plate-forme, qui sont exécutés sur des flèches. Tu ne peux pas créer d'escalier, et les liens ne téléportent pas à travers les intersections maudites",
["pro_12"] = "Uniquement les Heretics, Admirals et drones peuvent restorer les intersections maudites. Et pour les escaliers maudits, la Purge du Wicked va supprimer toutes les malédictions, mais durant la régénération d'autres vont apparaître.",

["inf_1"] = "TOUR INFINIE",
["inf_2"] = "COURSE OBLIGATOIRE",
["inf_3"] = "Dans la tour infinie, la course est obligatoire. Les joueurs normaux ne sont pas autorisés à utiliser des sorts et ne gagneront aucune récompense en atteignant l'orbe. Collecter l'orbe de fin donnera uniquement 10 mana.",
["inf_4"] = "Pour 'compléter' une tour infinie, vous avez besoin de joindre la course et essayer de rester dedans le plus longtemps possible. Vous allez recevoir des récompenses (si il y en a) quET vous serez éliminé.",
["inf_5"] = "Drone déchu",
["inf_6"] = "Pas comme les tours classiques et pro, le drone déchu a une tache spéciale dans la tour infinie.",
["inf_7"] = "A chaque intervale d'élèvement, le drone déchu créé 2 nouveaux nivaux. Chaque niveau pair sera limité. Et en plus, certain escaliers ou intersections peuvent être maudits.",
["inf_8"] = "La premère intervale dûre 20 secondes. Chaque élèvement va réduire l'intervale d'une demi seconde, jusqu'a ce que les niveaux soient créés plus rapidement qu'ils puissent être montés.",
["inf_9"] = "Effaceur",
["inf_10"] = "L'effaceur est un champ de force spécial qui va s'élever avec la tour et retirer les niveaux inférieurs. Tomber tout en bas élimine le joueur du match. Ceci est similaire à la lave dans d'autres jeux.",
["inf_11"] = "Tout comme le drone déchu, l'effaceur augmentera sa vitesse. Il va par contre s'élever régulièrement, au lieu de détruire 2 niveaux à la fois.",
["inf_12"] = "Les escaliers et plate-formes touchés par l'effaceur vont être détruits. Essayez d'éviter l'effaceur le plus longtemps possible pour assurer une victoire.",

["cus_1"] = "TOUR CUSTOM",
["cus_2"] = "TU DECIDES!",
["cus_3"] = "Dans la tour custom, vous pouvez ajuster chaque option de tour comme vous voulez.",
["cus_4"] = "Les récompenses de la tour custom sont réduites de moitié. Vous allez obtenir un token tous les 12 niveaux, et qualifier une montée tous les 30 niveaux.",
["cus_5"] = "Options de la tour",
["cus_6"] = "En changeant les options de la tour, vous pouvez la faire de votre manière. Choississez les niveaux, limitez les niveaux pairs ou même mettre la tour en mode infini.",
["cus_7"] = "Seul le propriétaire du serveur peut changer les options. Donc les serveurs publique ne sont pas supportés dans la tour custom.",
["cus_8"] = "Options des drones",
["cus_9"] = "Vous pouvez aussi modifier les petites options des drones. Ajustez le nombre max, le nombre minimum, ou même désactivés les drones en même temps.",

["vr_1"] = "En démarant Crazy Stairs en mode VR, vous allez automatiquement devenir un Architect.",
["vr_2"] = "Pas comme les joueurs normaux, les Architects n'ont pas besoin de monter la tour. Votre but est soit de limiter ou d'aider les joueurs pour monter la tour.",
["vr_3"] = "Le choix est votre. Allez-vous devenir une menace ou un sauveur? Ou voulez-vous juste vous amuser un peu ? Profitez !",
["vr_4"] = "Comment naviguer?",
["vr_6"] = "Utilisez le stick multidirectionel droit pour aller en haut ou en bas. Bouger le stick droit à gauche ou à droite fera bouger la camera.",
["vr_7"] = "Essayez de rester hors de la tour pour avoir une meilleure vue et viser plus facilement.",
["vr_8"] = "Comment utiliser un sort?",
["vr_9"] = "Pour utiliser un sort, pressez l'orbe magique avec le bouton grip. Un pointeur laser va apparaître, il va vous aider à viser les plate-formes et escaliers.",
["vr_10"] = "Exécutez le sort avec le bouton trigger, en appuyant sur le bouton grip. Chaque classe en vr a deux sorts. Un sort de plate-forme et un sort d'escaliers. Le sort choisis dépend de la cible.",
["vr_11"] = "Pour changer de classe en mode VR, pressez et maintenant le bouton trigger, sans le bouton grip. Vous pouvez ensuite changer de classe avec le stick correspondant à la main.",

["home_1"] = "MUGGLE'S HOME",
["home_2"] = "NOTRE DEMISE:\nMARCHER\nSAUTER\nET\nTOMBER",
["home_3"] = "PROS:\nBonus de vitesse et de saut aux rangs supérieurs\nDroits d'être fier\nCONS:\nAucun sort\npeut se coincer facilement",
["home_4"] = "'Nous n'avions pas ces magnifiques sorts en stage alpha!'\nla citation de notre fondateur",

["oasis_1"] = "CHAMELEON'S OASIS",
["oasis_2"] = "NOTRE DEMISE:\nCOMPIER\nIMITER\nEt\nSURPRENDRE",
["oasis_3"] = "PROS:\npeut changer de classe partout, à tout moment\nCONS:\nCoûte des Robux\nAugmenter le rang des toute les classes prend du temps",
["oasis_4"] = "'Je suis trop paresseux pour avoir mes propres sorts.'\nLa citation de notre fondateur",

["nexus_1"] = "HERETIC'S NEXUS",
["nexus_2"] = "NOTRE DEMISE:\nVOUS\nNE\nPASSEREZ\nPAS",
["nexus_3"] = "PROS:\nMeilleur dans les tours pro\nNe peutêtre stoppé\nCONS:\nFaire équipe est compliqué\nCoûte beaucoup de mana",
["nexus_4"] = "'Bannir la magie noire est comme bannir le fun.'\nLa citation de notre fondateur",

["guild_1"] = "THIEF'S GUILD",
["guild_2"] = "NOTRE DEMISE:\nEMPRUNTER\nUTILISER\nET\nRENDRE",
["guild_3"] = "PROS:\nTrès efficace en terme de mana\nPolyvalent\nCONS:\nA besoin de voler des escaliers\nNe peut pas détruire les escaliers dans le chemin",
["guild_4"] = "'C'est appelé emprunter actuellement.'\nLa citation de notre fondateur",

["nether_1"] = "SPECTRE'S NETHER",
["nether_2"] = "NOTRE DEMISE:\nDISPARAITRE\nSE CACHER\nET\nTELEPORTATER",
["nether_3"] = "PROS:\nSorts rapides\nParfait pour jouer en solo\nCONS:\nCoûte des robux\nNon recommendé pour les équipes",
["nether_4"] = "'Evidemment que téléporter est hors de danger.'\nLa citation de notre fondateur (MIA)",

["study_1"] = "ARCHON'S STUDY",
["study_2"] = "NOTRE DEMISE:\nOUVRIR\nPORTAIL\n???\nPROFITER",
["study_3"] = "PROS:\nRig utile\nRends confus les opposants\nCONS:\nLe plus compliqué à apprendre\nA besoin de planning",
["study_4"] = "'J'avais l'habitude de gouverner cet tour.'\nLa citation de notre fondateur",

["haven_1"] = "PATRON'S HAVEN",
["haven_2"] = "NOTRE DEMISE:\nAIDER\nPROTEGER\nET\nCREER",
["haven_3"] = "PROS:\nLe plus facile à apprendre\nJoueur en équipe\nCONS:\nUtilise beaucoup de mana\npeut attirer les profiteurs",
["haven_4"] = "'Ces nuls ont besoin de notrea aide!'\nLa citation de notre fondateur",

["shelter_1"] = "DRIFTER'S SHELTER",
["shelter_2"] = "NOTRE DEMISE:\nSURFER\nBALADER\nET\nPLANER",
["shelter_3"] = "PROS:\nPolyvalent\nJoueur en équipe\nCONS:\nA besoin de niveau en parcours\nCompliqué à utiliser en tour Pro",
["shelter_4"] = "'Qui a besoin d'escaliers de toute façon ? Nous sommes dans l'espace!'\nLa citation de notre fondateur",

["circus_1"] = "JOKER'S CIRCUS",
["circus_2"] = "NOTRE DEMISE:\nDECEVOIR\nEMBROUILLER\nET\nRIRE",
["circus_3"] = "PROS:\nFait pour le troll\nLes fips sont très utiles\nCONS:\nLes sorts coûtent beaucoup de mana\nTu peux ruiner une amitié",
["circus_4"] = "'Cette tour est une blague.'\nLa citation de notre fondateur",

["base_1"] = "KEEPER'S BASE",
["base_2"] = "NOTRE DEMISE:\nBOUGER\nTOURNER\nET\nCONTROLER",
["base_3"] = "PROS:\npeut restorer les escaliers\npeut réutiliser les escaliers\nCONS:\nA besoin de parcours pour utiliser correctement\nInutile sans des escaliers",
["base_4"] = "'Arrêtez de mettre le pagaille dans ma tour!'\nLa citation de notre fondateur",

["chamber_1"] = "WICKED'S CHAMBER",
["chamber_2"] = "NOTRE DEMISE:\nEMPÊCHER\nBLOQUER\nET\nDETRUIRE",
["chamber_3"] = "PROS:\npeut détruire chaque escalier\npeut purger la tour complète\nCONS:\nA besoin d'escaliers",
["chamber_4"] = "'Je ne suis pas méchant, il y a juste trop d'escaliers.'\nLa citation de notre fondateur",

["backdoor_1"] = "HACKER'S BACKDOOR",
["backdoor_2"] = "NOTRE DEMISE:\nEXPLOITER\nGLITCHER\nET\nCASSER",
["backdoor_3"] = "PROS:\nLa classe la plus rapide\nCompliqué à suivre\nCONS:\nA besoin d'escaliers\nInutile en équipe",
["backdoor_4"] = "'Jouer loyalement ? ça n'existe pas.'\nLa citation de notre fondateur",
	
--SHARED
["leader_pro"] = "Les tours pro comptent pour deux montées",	
["leader_update"] = "Mise à jour dans: ",	
["leader_updating"] = "Mise à jour...",	
["leader_rank"] = "RANG",
["leader_req"] = "MONTEE REQUISES",
["leader_off"] = "Les tours custom ne supportent pas les tableaux des scores.",

--OVERALL
["over_title"] = "Rangs totaux",
["over_desc"] = "Chaque rang ajoute un point",
["over_rank"] = "RANG",
["over_req"] = "POINTS REQ",
["emperor_req"] = "* Chameleon OU spectre requis",
["overmind_req"] = "** Chamelon ET Spectre requis",
["over_prefix"] = "PREFIXE",
["over_passes"] = "PASSES DE JEU\nREQUIS",
["over_notgroup"] = "COULEUR OLIVE - pas dans le groupe",
["over_group"] = "couleur bleue - dans le groupe",
["over_mod"] = "MODERATEUR - le joueur est un modérateur",
["over_admin"] = "ADMIN - le joueur est un admin",
["over_owner"] = "PIEGE MOI - Le créateur du jeu (sleazel)",

--OTHER
["muggle_lead"] = "MUGGLES PRECIPITES",
["muggle_ranks"] = "RANGS MUGGLE",

["hacker_lead"] = "HACKERS CRYPTES",
["hacker_ranks"] = "RANGS HACKER",

["wicked_lead"] = "WICKEDS VIOLENTS",
["wicked_ranks"] = "RANGS WICKED",

["keeper_lead"] = "KEEPERS PREPARES",
["keeper_ranks"] = "RANGS KEEPER",

["joker_lead"] = "JOKERS FOUS",
["joker_ranks"] = "RANGS JOKER",

["drifter_lead"] = "DRIFTERS RAPIDES",
["drifter_ranks"] = "RANGS DRIFTER",

["patron_lead"] = "PATRONS NOBLES",
["patron_ranks"] = "RANGS PATRON",

["archon_lead"] = "ARCHONS AGILES",
["archon_ranks"] = "RANGS ARCHON",

["spectre_lead"] = "SPECTRES VOLANTS",
["spectre_ranks"] = "RANGS SPECTRE",

["thief_lead"] = "THIEVES FURTIFS",
["thief_ranks"] = "RANGS THIEF",

["heretic_lead"] = "HERETICS IMPITOYABLES",
["heretic_ranks"] = "RANGS HERETIC",

["chameleon_lead"] = "CHAMELEONS RAPIDES",
["chameleon_ranks"] = "RANGS CHAMELEON",

}

--TUTORIAL
module.tutorial = {

["tut_big_1"] = "Bienvenu dans Crazy Stairs!",
["tut_big_2"] = "Premièrement, apprenez à vous morpher.",
["tut_big_3"] = "Vous êtes maintenant un Patron, Les Patrons peuvent créer des escaliers.",
["tut_big_4"] = "Vous les sorts sont exécutés en sautant.",
["tut_big_5"] = "Cool, hein? Maintenant morphez en Joker. Les Jokers peuvent faire pivoter les escaliers.",
["tut_big_6"] = "Vous êtes maintenant un Joker, utilisez ce sort pour faire pivoter l'escalier.",
["tut_big_7"] = "Certain sorts ont besoin d'être exécutés sur des escaliers.",
["tut_big_8"] = "Maintenant morphez en Keeper. Les Keepers peuvent bouger les escaliers.",
["tut_big_9"] = "Vous êtes maintenant un Keeper, Utilisez ce sort pour faire bouger l'escalier.",
["tut_big_10"] = "Sautez sur la flèche de devant pour bouger l'escalier.",
["tut_big_11"] = "Vous allez rencontrer beaucoup d'escaliers bloquand le chemin dans ce jeu.",
["tut_big_12"] = "Vous êtes maintenant un Wicked, utilisez ce sort pour détruire l'escalier bloquant le chemin.",
["tut_big_13"] = "Vous pouvez détruire les escaliers au dessus, en sautant sur ceux en dessous.",
["tut_big_14"] = "Avant de commencer, laisse moi te montrer la classe premium.",
["tut_big_15"] = "Vous êtes maintenant un Spectre, le Spectre est une classe premium majoritairement utilisée en solo.",
["tut_big_16"] = "Votre but - atteindre le haut et attraper l'orbe. Bonne chance!",

["tut_select"] = "Choisi ce sort.",

["tut_small_morph"] = "Saute sur le morphe.",
["tut_small_arrow"] = "Saute sur la flèche.",
["tut_small_stairs"] = "Saute sur les escaliers.",
	
}

module.specialreq = {

["notground"] = "Ne peut pas être lancé au niveau du sol.",
["restore"] = "Ne peut être lancé seulement tout en haut.",
["event"] = "Ne peut pas être lancé pendant un autre évènement.",
["drones"] = "Ne peut être lancé uniquement quand les drones sont en mode défaut.",
["oneover"] = "Tu ne peux avoir qu'une Overcharge de mana à la fois.",
["soft"] = "Ne peut pas être lancé à travers des escaliers bloquant le chemin.",
["flatten"] = "Les escaliers doivent être dans l'intersection choisie.",
["wickedaltevent"] = "Ne peut pas être lancé durant un autre autre évènement ou régénération.",
["confined"] = "Ne peut pas bouger les escaliers hors de la zone de jeu. Choix de direction requis.",
["onesteal"] = "Tu ne peux voler qu'un seul escalier à la fois.",
["softthief"] = "Tu as besoin d'escaliers volés. Ne peut pas être lancé à travers des escaliers bloquant.",
["uppass"] = "Tu as besoin d'escaliers voléss. Ne peut que être lancé sur les plate-formes extérieures au dessus du niveau de la terre.",
["sidepass"] = "Tu as besoin d'escaliers volés. Ne peut pas être lancé sur le niveau de la terre.",
["noescape"] = "D'autre portes doivent être dans la zone de jeu.",
["outdrift"] = "Ne peut que être lancé sur les plate-formes extérieures au dessus du niveau de la terre.",
["drifting"] = "La plate-forme cible ne doit pas être dérivée. Ne peut pas être lancé sur le niveau de la terre.",
["impostor"] = "Rang de Impostor minimum requis pour y accéder.",
["charlatan"] = "Rang de Charlatan minimum requis pour y accéder.",
["chameleonrigevent"] = "Ne peut pas être lancé lors d'un autre évènement. Rang de Usurper minimum requis pour y accéder. Tokens multiple non utilisés requis. ", 
	
}

module.executioninfo = {

["arrows"] = "Dois être exécuté sur les flèches d'une plate-forme.",
--call the orb!
["restore"] = "Dois être exécuté sur les plate-formes en haut uniquement.",
["below"] = "Dois être exécuté sur des escaliers riggés ou normaux.",
["above"] = "peut être utilisé sur n'importe quel escalier ou liens avec des escaliers normaux ou riggés au dessus d'eux.",
["centre"] = "Dois être exécuté sur une plate-forme.",
["arrowstimed"] = "Dois être exécuté (répétitivement) sur les flèche d'une plate-forme.",
["anywhere"] = "peut être utilisé partout.",
["noexe"] = "Ce sort n'a pas besoin d'exécution.",
["flip"] = "Dois être exécuté sur des escaliers normaux, tournés ou riggés.",
["flipabove"] = "peut être utilisé sur chaque escalier ou liens avec des escalyers normaux, tournés ou riggés au dessus d'eux.",
["flipper"] = "Dois être exécuté (répétitivement) sur des escaliers. Au dessus (ou en dessous) il doit y avoir des escaliers normaux, tournés ou riggés.",
["destroy"] = "peut être exécuté sur chaque escalier non-maudit.",
["destroyabove"] = "peut être exécuté sur chaque escalier ou liens avec escaliers au dessus d'eux (chaque non-maudit).",
["flatten"] = "Dois être exécuté sur des plate-formes avec des escaliers normaux ET opposé, bloquant l'intersection.",
["bender"] = "Dois être exécuté (répétitivement) sur des escaliers. Les escaliers au dessus et/ou en dessous doivent être normaux ou riggés.",
--restore!!!
["movedown"] = "peut être exécuté sur les flèches d'une plate-forme, ou sur un escalier spécial.",
["ascension"] = "Dois être exécuté (répétitivement) sur des escaliers normaux ou riggés (escaliers tournés aux rangs supérieurs)",
["blink"] = "peut être exécuté sur chaque escalier ou lien avec le moindre escalier non-maudit au dessus d'eux.",
["outer"] = "Dois être exécuté sur les plate-formes extérieures uniquement.",
["riser"] = "Dois être exécuté (répétitivement) sur les plate-formes.",
["curse"] = "Dois être exécuté sur des escaliers normaux, riggés, ou maudits.",
["curseabove"] = "peut être exécuté sur chaque escalier ou liens avec un escalier normal, riggé ou maudit au dessus d'eux.",

}

module.spells = {}

--SPELL NAMES
module.spells.names = {

--PATRON
["summon"] = "Créer un escalier",
["restore"] = "Appeler l'orbe", 
["split"] = "Diviser l'escalier",
["shrinkabove"] = "Rétrécir l'escalier au dessus",
["link"] = "Créer un lien",
["portal"] = "Créer un portail",

["summoner"] = "Invocateur",
["patronrigevent"] = "Patron Rig",
["patronevent"] = "Surcharge d'escaliers",
["patronaltevent"] = "Evènement petit",
["patronmode"] = "Drones en mode Patron",
["patronrefill"] = "Surcharge de mana (Patron)",
["patronunion"] = "Union fantômatique(Patron)",

--JOKER 
["flip"] = "Tourner l'escalier",
["flipabove"] = "Tourner l'escalier au dessus",
["fake"] = "Créer un faux escalier",
["invisible"] = "Créer un escalier invisible",
["disco"] = "Escalier disco",
["trap"] = "Créer un piège",

["flipper"] = "Tourneur",
["jokerrigevent"] = "Joker Rig",
["jokerevent"] = "Evènement voilé",
["jokeraltevent"] = "Evènement tourné",
["jokermode"] = "Drones en mode Joker",
["jokerrefill"] = "Surcharge de mana (Joker)",
["jokerunion"] = "Union fantômatique (Joker)",

--WICKED
["destroy"] = "Détruire un escalier",
["destroyabove"] = "Détruire l'escalier au dessus",
["bend"] = "PLier l'escalier en haut",
["damage"] = "Endommage l'escalier au dessus",
["flatten"] = "Plier l'escalier opposé en bas",
["wall"] = "Créer un mur" ,

["bender"] = "Cintreuse",
["wickedrigevent"] = "Wicked Rig",
["wickedevent"] = "Evènement de destruction",
["wickedaltevent"] = "Evènement de la purge",
["wickedmode"] = "Drones en mode Wicked",
["wickedrefill"] = "Mana Overload (Wicked)",
["wickedunion"] = "Union fantômatique (Wicked)",

--KEEPER
["move"] = "Bouger l'escalier",
["rotate"] = "Tourner l'escalier",
["moveup"] = "Bouge l'escalier vers le haut",
["movedown"] = "Restorer l'escalier",
["moverETom"] = "Mouvement de l'escalier en haut hasardeux",
["rig"] = "Mouvement hasardeux",

["ascension"] = "Ascension",
["keeperrigevent"] = "Keeper Rig",
["keeperevent"] = "Evènement de remaniement",
["keeperaltevent"] = "Restoration de tous les escaliers",
["keepermode"] = "Drones en mode Keeper",
["keeperrefill"] = "Surcharge de mana (Keeper)",
["keeperunion"] = "Union fantômatique (Keeper)",

--SPECTRE
["phantom"] = "Créer des escaliers fantômes",
["ghost"] = "Ghostifie l'escalier au dessus",
["shadow"] = "Dé-ghostifie l'escalier",
["horizontal"] = "Téléportation horizontale",
["rETom"] = "Téléportation hasardeuse",
["vertical"] = "Téléportation verticale",

["traveller"] = "Chatoyance",
["spectrerigevent"] = "Spectre Rig",
["spectreevent"] = "Evènement de l'éclipse",
["spectrealtevent"] = "Evènement fantôme",
["spectremode"] = "Drones en mode spectre",
["spectrerefill"] = "Surcharge de mana (Spectre)",
["spectreunion"] = "Union fantômatique (Spectre)",

--HACKER
["dash"] = "Dash",
["blink"] = "Clignotement",
["swap"] = "Echange",
["slide"] = "Escalators vers le bas",
["slideup"] = "Escalators vers le haut",
["glitch"] = "Glitch d'escalier",

["speedup"] = "Exploitement de la vitesse",
["hackerrigevent"] = "Hacker Rig",
["hackerevent"] = "Evènement de l'hackerevent",
["hackeraltevent"] = "Evènement brèche",
["hackermode"] = "Drones en mode Hacker",
["hackerrefill"] = "Surcharge de mana (Hacker)",
["hackerunion"] = "Union fantômatique (Hacker)",

--THIEF
["steal"] = "Voler un escalier",
["stealabove"] = "Voler un escalier au dessus",
["place"] = "Placer un escalier",
["uppass"] = "Escalier en spirale",
["sidepass"] = "Créer un passage",
["drop"] = "Escaliers applatis",

["heist"] = "Braquage",
["thiefrigevent"] = "Thief Rig",
["thiefevent"] = "Evènement des terres plates",
["parpassall"] = "Passage pour chaque escalier",
["thiefmode"] = "Drones en mode Thief",
["thiefrefill"] = "Surcharge de mana (Thief)",
["thiefunion"] = "Union fantômatique (Thief)",

--ARCHON
["splitup"] = "Créer une division verticale",
["splitrotate"] = "Créer une division diagonale",
["splitside"] = "Créer une division droite",
["splitrETom"] = "Créer une division hasardeuse",
["cancelsplit"] = "Détruire une division",
["splitforward"] = "Créer une division de plate-forme",

["splitter"] = "Séparateur",
["archonrigevent"] = "Archon Rig",
["archonevent"] = "Evènement de téléportation",
["archonaltevent"] = "Evènement de division",
["archonmode"] = "Drones en mode Archon",
["archonrefill"] = "Surcharge de mana (Archon)",
["archonunion"] = "Union fantômatique (Archon)",

--DRIFTER
["indrift"] = "Surfer",
["outdrift"] = "Deriver une plate-forme externe",
["updrift"] = "Monter",
["diagdrift"] = "Deriver une plate-forme interne",
["spin"] = "Dériver l'escalier",
["driftabove"] = "Dériver l'escalier au dessus",

["riser"] = "Montant",
["drifterrigevent"] = "Drifter Rig",
["drifterevent"] = "Evènement de dérivation",
["drifteraltevent"] = "Evènement de haussement",
["driftermode"] = "Drones Drifter Mode",
["drifterrefill"] = "Surcharge de mana (Drifter)",
["drifterunion"] = "Union fantômatique (Drifter)",

--HERETIC
["createcursed"] = "Créer un escalier maudit",
["curse"] = "maudir/restorer un escalier",
["curseabove"] = "maudir/restorer un escalier au dessus",
["curseinter"] = "Clignotement",
["autodown"] = "Schisme supérieur",
["autoup"] = "Schisme inférieur",

["malediction"] = "Malédiction",
["hereticrigevent"] = "Heretic Rig",
["hereticevent"] = "Evènement de schisme",
["hereticaltevent"] = "Evènement maudit",
["hereticmode"] = "Drones en mode Heretic",
["hereticrefill"] = "Surcharge de mana (Heretic)",
["hereticunion"] = "Union fantômatique (Heretic)",

--CHAMELEON
["ditch"] = "Croiser les escaliers",
["warp"] = "Distortion de l'escalier",
["chamdown"] = "Bouger l'escalier vers le bas",
["chamdraw"] = "Pont-levis en dessous",
["chamdrawabove"] = "Pont-levis au dessis",

["chameleonrigevent"] = "Chameleon Rig",
["chameleonmode"] = "Drones en mode Chameleon",
["chameleonrefill"] = "Surcharge de mana (Chameleon)",
["chameleonunion"] = "Union fantômatique (Chameleon)",

}

local union = "C'est un sort d'union fantômatique chronométré. Une fois en mode d'union fantômatique, vous pouvez passer à travers les escaliers dans le chemin et marcher sur les escaliers fantôme, les parcours et les faux escaliers. Les escaliers spéciaux n'auront aucun effet sur vous et vous n'allez pas activer les Rigs. Par contre, vous ne pouvez pas utiliser de sorts dans ce mode."
local overload = "C'est un sort de surcharge. Il te donnera un mana toutes les 6 secondes pour la prochaine minute (10 au total). Tu ne peux avoir qu'une seule surcharge à la fois."
 
module.spells.descriptions = {

--PATRON
["summon"] = "Ce sort permet de créer un seul escalier dans une direction précise. Si il y a le moindre escalier dans le chemin, il sera détruit.",
["restore"] = "Ce sort apelle l'orbe an haut sur la plate-forme choisie. Le prix passe à 2 de mana avec le rang Defender. La vitesse de l'orbe double avec le rang Saviour.",
["shrinkabove"] = "Ce sort rétrécit les escaliers au dessus, te permettant de marcher autour d'eux.",
["link"] = "Ce sort créer un pont d'énergie entre des plate-formes pendant 60 secondes. Seulement un côté du trou sera couvert, pour marcher autour. La durée du sort double avec le rang Creator.",
["split"] = "Ce sort coupe l'escalier en deux escaliers opposés, pour te permettre d'accéder aux 4 plate-formes.",
["portal"] = "Ce sort créer un portail qui téléportera tous les joueurs d'un étage. Il dure 60 secondes. La durée est augmentée jusqu'a 120 secondes avec le rang Protector.",

["summoner"] = "Ce sort est chronométré. Il te permet de créer autant d'escaliers que tu veux pendant une minute. Continue de sauter sur les flèches pour créer des escaliers. Le temps est augmenté jusqu'a 90 secondes avec le rang Guardian. Utiliser ce sort va aussi remplir la réserve de mana de tous les Patrons avec au moins le rang Friend.",
["patronrigevent"] = "Ce sort est un sort de rig. Il va rig tous les escaliers normaux, un par un, avec un Patron Rig. Les escaliers, une fois activés, vont ajouter 1 mana au joueur qui l'a activé. Si le joueur a son mana au maximum, l'escalier de va pas s'activer. Après exécution, les escaliers redeviendront normaux.",
["patronevent"] = "Ce sort est un sort d'évènement. Il va créer un escalier pour chaque intersection libre, non maudite.",
["patronaltevent"] = "Ce sort est un sort d'évènement. Il va rapetisser tous les escaliers normaux, un par un.",
["patronmode"] = "Ce sort est un sort de drone. Il va changer le mode des drones en Patron. Les drones patron, si le nombre d'escalier est dans la limite, vont, de façon hasardeuse, Utiliser le sort rapetissement d'escalier ou un Patron Rig sur les escaliers normaux. Hors des limites, les drones vont créer et détruire respectivement.",
["patronrefill"] = overload,
["patronunion"] = union,

--JOKER
["flip"] = "Ce sort tourne les escaliers, donc le haut deviendra le bas et vice-versa. Une fois tournés, les escaliers sont immunisés aux sorts, à pars la destruction, aux rangs supérieurs de vol et de mouvement. Tu peux par contre retourner l'escalier encore.",
["flipabove"] = "Ce sort tourne les escaliers au dessus, donc le haut deviendra le bas et vice-versa. Une fois tournés, les escaliers sont immunisés aux sorts, à pars la destruction, aux rangs supérieurs de vol et de mouvement. Tu peux par contre retourner l'escalier encore.",
["fake"] = "Ce sort permet de créer un escalier dans une direction précise. Si il y a le moindre escalier dans le chemin, il sera détruit. Tous les joueurs (même toi) qui vont essayer de moner ces escaliers vont tomber à travers, avec l'exception des Tricksters, ITs, et les joueurs en union fantômatique.",
["invisible"] =  "Ce sort créer un escalier invisible. Par contre, il ne va pas détruire les escaliers dans le chemin, compté au sort du Patron, donc tu ne peux placer des escaliers que dans des intersection vides. Améliore ton rang jusqu'a Jester pour voir tous les escaliers invisibles, et l'option de ne pas les révéler.",
["disco"] = "Ce sort rend un escalier disco. Chaque joueur, (même toi), va s'arrêter et dancer sur l'escalier pendant 5 secondes (généralement deux fois). Les rangs Comic et supérieurs sont immunisés.",
["trap"] = "Ce sort rend une plate-forme piège pendant 60 secondes. Chaque joueur, (même toi), qui va marcher sur le piège va tomber sur la plate-forme en dessous. Améliore ton rang jusqu'a Jokester pour pouvoir détecter les pièges.",

["flipper"] = "Ce sort est chronométré. Il te permet d'utiliser autant de sorts de retournement d'escaliers que tu le veux pendant une minute. Les escaliers au dessus vont toujours être tournés, si ils sont trouvés. Sinon, les escaliers en dessous seront tournés à la place. Ce sort va aussi remplir la réserve de mana de tous les Jokers avec au moins le rang Fool.",
["jokerrigevent"] = "Ce sort est un sort de rig. Il va rig tous les escaliers normaux, un par un, avec un Jocker Rig. Les escaliers, une fois activés, vont automatiquement tourner.",
["jokerevent"] = "Ce sort est un sort d'évènement. Il va rendre tous les escaliers normaux en escaliers invisible. Les messages de trouvaille ne vont pas se montrer, pour éviter le spam.",
["jokeraltevent"] = "Ce sort est un sort d'évènement. Il va tourner tous les escaliers normaux.",
["jokermode"] = "Ce sort est un sort de drone. Il va changer le mode des drones en Joker. Les drones Joker, si le nombre d'escalier est dans la limite, vont, de façon hasardeuse, utiliser le sort escaliers invisibles ou un Joker Rig sur les escaliers normaux. Les escaliers spéciaux seront restaurés à la place. Hors des limites, les drones vont créer et détruire respectivement.",
["jokerrefill"] = overload,
["jokerunion"] = union,

--WICKED
["destroy"] = "Ce sort détruit les escaliers. Non comme l'autre sort, il fonctionne sur chaque escalier. Améliore ton rang jusqu'a Vile pour utiliser ce sort gratuitement. Améliore ton rang jusqu'a Vicious pour obtenir 1 mana à chaque fois que tu détruis un escalier spécial. Améoliore ton rang jusqu'a Annihilator pour détruire les escaliers maudits.",
["destroyabove"] = "Ce sort détruit les escaliers. Non comme l'autre sort, il fonctionne sur chaque escalier. Améliore ton rang jusqu'a Vicious pour obtenir 1 mana à chaque fois que tu détruis un escalier spécial. Améoliore ton rang jusqu'a Annihilator pour détruire les escaliers maudits.",
["bend"] = "Ce sort tord les escaliers vers le haut. Utilise le pour gagner accès au plate-formes supérieures.",
["damage"] = "Ce sort tourne les escaliers au dessus en parcour, en enlevant la majorité des marches. Avant d'essayer, rapelle-toi du temps de recharge du saut. Améliore ton rang jusqu'a Destroyer pour marcher sur les parcours comme les escaliers normaux.",
["flatten"] = "Ce sort tord l'escalier opposé vers le bas. Utilise le pour gagner accès à une autre plate-forme.",
["wall"] = "Ce sort créé un mur d'énergie sur la plate-forme et un lien jusqu'a une autre plate-forme pendant 60 secondes. Uniquement les Wicked peuvent marcher à travers ces murs et sur le lien. Le mur peut être forcé avec une téléportation de Spectre, un dash de Hacker ou une union fantômatique.",

["bender"] = "Ce sort est chronométré. Il t'autorise à utiliser autant de sorts Tordre l'escalier au dessus pendant une minute. Les escaliers au dessus et en dessous seront tordus si ils sont compatibles. Améliore ton rang jusqu'a Nemesis pour augmenter la limite de temps jusqu'a 90 secondess. Ce sort va aussi remplir la réserve de mana de tous les Wickeds avec au moins le rang Mean.",
["wickedrigevent"] = "Ce sort est un sort de rig. Il va rig tous les escaliers normaux, un par un, avec Wicked Rig. Les escaliers, une fois activés, vont se dértruire automatiquement. Améliore ton rang jusqu'a Devil pour marcher sur les Wicked Rigs et ne pas les activer.",
["wickedevent"] = "Ce sort est un sort d'évènement. Il va détruire tous les escaliers normaux dans le jeu. La régénération ne sera pas activée.",
["wickedaltevent"] = "Ce sort est un sort d'évènement. Il va détruire tous les escaliers ET malédictions dans le jeu. Aucune exception. La régénération sera activée.",
["wickedmode"] =  "Ce sort est un sort de drone. Il va changer le mode des drones en Wicked. Les Wicked Drones, si le nombre d'escalier est dans la limite, vont, de façon hasardeuse, utiliser le sort Tordre un escalier et un Wicked Rig sur les escaliers normaux. Les escaliers spéciaux seront restaurés à la place. Hors des limites, les drones vont créer et détruire respectivement.",
["wickedrefill"] = overload,
["wickedunion"] = union,

--KEEPER
["move"] = "Ce sort va bouger un escalier dans une direction horizontale, détruisant le moindre escalier dans le chemin. Après l'utilisation, une fenêtre va apparaître, te demandant de choisir une direction. Les escaliers ne peuvent pas être bougé hors de la zone de jeu. Améliore ton rang jusqu'a Controller pour bouger les escaliers tournés.",
["rotate"] = "Ce sort va pivoter un escalier dans une direction horizontale, détruisant le moindre escalier dans le chemin. Après l'utilisation, une fenêtre va apparaître, te demandant de choisir une direction et de pivoter. Les escaliers ne peuvent pas être pivotés hors de la zone de jeu. Améliore ton rang jusqu'a Controller pour bouger les escaliers tournés.",
["moveup"] = "Ce sort va bouger l'escalier vers le haut, détruisant le moindre escalier dans le chemin. Les escaliers ne peuvent pas être bougés au dessus de l'étage maximum. Améliore ton rang jusqu'a Controller pour bouger les escaliers tournés.",
["movedown"] = "Ce sort restaure les escaliers spéciaux. Si les escaliers sont déjà normaux, ce sort ne va pas s'exécuter. Améliore ton rang jusqu'a Captain pour utiliser ce sort gratuitement. Améliore ton rang jusqu'a Admiral pour être capable de restaurer les escaliers maudits et intersection maudites.",
["moverETom"] = "Ce sort permet de bouger ou de tourner l'escalier dans une direction au hasard, détruisant le moindre escalier dans le chemin. Améliore ton rang jusqu'a Operator pour éviter que les escaliers aillent vers le bas. Améliore ton rang jusqu'a Controller pour bouger les escaliers tournés.",
["rig"] = "Ce sort permet de bouger ou de tourner l'escalier au dessus dans une direction au hasard, détruisant le moindre escalier dans le chemin. Améliore ton rang jusqu'a Operator pour éviter que les escaliers aillent vers le bas. Améliore ton rang jusqu'a Controller pour bouger les escaliers tournés.",

["ascension"] = "Ce sort est chronométré. Il te permet d'utiliser autant de bouger un escalier supérieur que tu veux pendant une minute. Améliore ton rang jusqu'a Commander pour augmenter la limite de temps à 90 secondes. Ce sort va aussi remplir la réserve de mana de tous les Keeper avec au moins le rang Handler.",
["keeperrigevent"] = "Ce sort est un sort de rig. Il va rig tous les escaliers normaux, un par un, avec un Keeper rig. Les escaliers, une fois activés, vont bouger ou tourner dans une direction au hasard. Améliore ton rang jusqu'a Operator, pour que chaque Rig que tu activeras n'ira jamais en bas. Améliore ton rang jusqu'a Sentinel pour marcher sur les Keeper Rigs sans les activer.",
["keeperevent"] = "Ce sort est un sort d'évènement. Avant d'exécuter ce sort, tu peux choisir le mode doux ou forcé. En mode doux, ce sort va bouger ou tourner les escaliers dans des directions hasardeuse, sans détruire le moindre escalier. En mode forcé, In forced mode, ce sort va bouger ou tourner les escaliers dans des directions hasardeuse, détruisant tous les escaliers dans le chemin.",
["keeperaltevent"] = "Ce sort est un sort d'évènement. Il va restaurer tous les escaliers, même les maudits. Mais il ne va retirer les intersections maudites.",
["keepermode"] = "Ce sort est un sort de drone. Il va changer le mode des drones en Keeper. Les Keeper Drones, si le nombre d'escalier est dans la limite, vont, de façon hasardeuse, utiliser le sort Déplacement forcé ou pivoter les escaliers, et un Keeper Rig sur les escaliers normaux. Les escaliers spéciaux seront restaurés à la place. Hors des limites, les drones vont créer et détruire respectivement.",
["keeperrefill"] = overload,
["keeperunion"] = union,

--SPECTRE
["phantom"] = "Ce sort créera des escaliers \"phantom\" dans la direction choisie. S'il y a des escaliers traversants sur le chemin, ils seront démolis. Les escaliers fantômes disparaîtront rapidement après le lancement, disparaissant complètement." ,
["ghost"] = "Ce sort vous permet de devenir fantomatique au-dessus des escaliers. Vous pouvez traverser les escaliers fantomatiques, mais vous ne pouvez pas marcher dessus à moins d'être classé jusqu'à Aether.",
["shadow"] = "Ce sort vous permet de dé-fantômer les escaliers, en les ramenant à la normale. Passez au niveau Fantôme pour lancer ce sort gratuitement.",
["horizontal"] = "Ce sort vous permet de vous téléporter horizontalement dans la direction choisie. Vous pouvez vous téléporter par n'importe quel escalier sur votre chemin.",
["random"] = "Ce sort vous téléportera sur une plate-forme aléatoire au même niveau.",
["vertical"] = "Ce sort vous téléportera vers la plate-forme au-dessus.",

["traveller"] = "Il s'agit d'un sort chronométré. Il vous permet de lancer autant de sorts de téléportation horizontale que vous le souhaitez pendant une minute. Classez-vous jusqu'à l'Ombre pour augmenter la limite à 90 secondes. Ce sort rechargera également le Mana pour tous les Spectres avec au moins le rang Shade.",
["spectrerigevent"] = "Il s'agit d'un sort Rig. Il rigera tous les escaliers normaux, un par un, avec le Rig Eclipse. Les escaliers, une fois déclenchés, auront 50 % de chances d'être fantômes. Montez jusqu'à Vision pour pouvoir marcher sur les plates-formes spectrales sans les déclencher.",
["spectreevent"] = "Ceci est un sort d'événement. Avant de l'exécuter, vous pouvez choisir le mode fantôme doux ou fantôme forcé. En mode fantôme doux, ce sort déplacera ou fera pivoter les escaliers normaux dans une direction aléatoire, sans rien détruire dans le processus. En mode forcé mode fantôme, ce sort déplacera ou fera pivoter tous les escaliers dans une direction aléatoire, détruisant tous les escaliers sur le chemin.",
["spectrealtevent"] = "Ceci est un sort d'événement. Il va ghostifier tous les escaliers normaux. Montez jusqu'à Aether pour marcher sur des escaliers fantômes. Ghost Union peut également être utilisé pour marcher sur des escaliers fantômes.",
["spectremode"] = "Ceci est un sort Drone. Il changera le mode drone en Spectre. Les drones Spectre, si le nombre d'escaliers est dans les limites, lanceront aléatoirement des sorts Soft Ghost Move ou Rotation et Spectre Rig sur des escaliers normaux. Escaliers spéciaux sera restauré à la place. En dehors des limites, les drones créeront et détruiront respectivement.",
["spectrerefill"] = overload,
["spectreunion"] = union,
	
--HACKER
["dash"] = "Ce sort vous téléportera dans la direction choisie. Contrairement au sort du Spectre, vous ne pouvez pas vous téléporter à travers les escaliers. Améliore ton rang jusqu'a Cracker pour accélérer ce sort de 50%.",
["blink"] = "Ce sort vous téléportera autour du blocage au-dessus des escaliers. Les escaliers doivent être dans la direction opposée aux escaliers en dessous pour que cela fonctionne. Classez-vous jusqu'à Exploiter pour accélérer ce sort de 50 %.",
["swap"] = "Ce sort vous téléportera à l'endroit où se trouve votre fantôme. Contrairement aux autres sorts de base, Swap peut être lancé n'importe où.",
["slide"] = "Ce sort transformera les escaliers en escalator descendant. L'escalator ne fonctionnera que s'il y a des joueurs dessus. Classez-vous jusqu'à Scripter pour mettre automatiquement en pause tous les escalators descendants.",
["slideup"] = "Ce sort transformera les escaliers en escalator vers le haut. L'escalator ne fonctionnera que s'il y a des joueurs dessus.",
["glitch"] = "Ce sort créera un bug dans les escaliers, vous téléportant ainsi qu'eux-mêmes à un endroit différent du même niveau. Classez-vous jusqu'à Zero, pour téléporter les escaliers à côté de l'orbe, si vous êtes déjà au niveau supérieur.",

["speedup"] = "Il s'agit d'un sort chronométré. Il ne nécessite pas d'exécution, il augmentera votre vitesse de marche de 50 % pendant une minute. Vous ne pouvez pas lancer d'autres sorts dans ce mode. Ce sort rechargera également le mana de tous les hackers avec au moins le rang Geek",
["hackerrigevent"] = "Il s'agit d'un sort Rig. Il rigera tous les escaliers normaux, un par un, avec le Hacker rig. Une fois déclenché, il téléportera le joueur et les escaliers à un endroit différent au même niveau. Un seul joueur sera téléporté. Rang jusqu'à Reaper pour marcher sur Hacker Rigs sans les déclencher.",
["hackerevent"] = "Ceci est un sort d'événement. Il transformera tous les escaliers normaux, un par un, en Escalator vers le haut ou l'Escalator vers le bas.",
["hackeraltevent"] = "Ceci est un sort d'événement. Il transformera tous les escaliers normaux, un par un, en escalators vers le haut.",
["hackermode"] = "Il s'agit d'un sort de drone. Il changera le mode drone en Hacker. Les drones hacker, si le nombre d'escaliers est dans les limites, lanceront aléatoirement des sorts d'escalator ou hacker Rig sur des escaliers normaux. Des escaliers spéciaux seront restaurés à la place . En dehors des limites, les drones créeront et détruiront respectivement.",
["hackerrefill"] = overload,
["hackerunion"] =  union,

--THIEF
["steal"] = "Ce sort vous permet de voler un escalier en dessous, normaux ou truqués. Ceci ou voler au-dessus est nécessaire pour lancer d'autres sorts de voleur de base. Passez au rang de Hijacker pour pouvoir voler n'importe quel escalier. Passez au rang de Outlaw pour  pouvoir voler 2 escaliers à la fois.",
["stealabove"] = "Ce sort vous permet de voler un escalier au-dessus, normaux ou truqués. Ceci ou voler en dessous est nécessaire pour lancer d'autres sorts de voleur de base. Rang jusqu'à Hijacker pour pouvoir voler n'importe quel escalier. Rang jusqu'à Outlaw pouvoir voler 2 escaliers à la fois.",
["place"] = "Ce sort vous permet de remettre les escaliers dans la direction choisie. Cependant, cela ne démolira pas les escaliers qui traversent comme avec le sort Patron, donc vous ne pouvez placer les escaliers que dans une intersection vide.",
["uppass"] = "Ce sort vous permet de créer un escalier en colimaçon à partir d'escaliers volés. Il ne peut être lancé que sur des plates-formes extérieures et durera une minute. L'escalier en colimaçon est invulnérable à tous les sorts. Améliore ton rang jusqu'a Bandit pour que l'escalier dure deux minutes.",
["sidepass"] = "Ce sort vous permet de créer un contournement incurvé à partir d'escaliers volés. Il sera créé dans la direction choisie et durera une minute. Le contournement est invulnérable à tous les sorts. Classez-vous jusqu'à Robber pour que le contournement dure jusqu'à deux minutes.",
["drop"] = "Ce sort vous permet de poser des escaliers gratuitement. Vous devrez cependant trouver une intersection vide. Les escaliers posés sont plats.",

["heist"] = "Il s'agit d'un sort chronométré. Il vous permet de lancer le sort d'escalier autant de fois que vous le souhaitez. Contrairement au sort d'escalier normal, ce sort peut être lancé en traversant des escaliers, car les escaliers seront automatiquement volés dans ce sort rechargera également le mana de tous les voleurs ayant au moins le rang Crook.",
["thiefrigevent"] = "Il s'agit d'un sort Rig. Il Truquera tous les escaliers normaux, un par un, avec un Thief Rig. Une fois déclenchés, les escaliers voleront un mana au joueur déclencheur et l'ajouteront à votre propre mana. Vous ne recevra pas de Mana si votre Mana est au maximum. Vous ne recevrez pas non plus de Mana si vous changez d'alignement.",
["thiefevent"] = "Ceci est un sort d'événement. Il transformera tous les escaliers normaux, un par un, en escaliers plats fossés.",
["thiefaltevent"] = "Ceci est un sort d'événement. Il créera un contournement à chaque intersection intérieure nord et sud. Si l'intersection est maudite, le contournement ne sera pas créé.",
["thiefmode"] = "Il s'agit d'un sort de drone. Il changera le mode drone en Thief. Les drones Thief, si le nombre d'escaliers est dans les limites, lanceront aléatoirement des sorts de vol/placement des escaliers normaux ou des Thief Rig. Les escaliers spéciaux seront restauré à la place. En dehors des limites, les drones créeront et détruiront respectivement.",
["thiefrefill"] = overload,
["thiefunion"] = union,

--ARCHON
["splitup"] = "Ce sort va connecter les escaliers en dessous aux escaliers du dessus avec un portail. S'il n'y a pas d'escaliers, ils seront créés. Le rang sage ignore les connexions descendantes.",
["splitrotate"] = "Ce sort va connecter un escalier en dessous à un autre dans une direction horizontale tournée de votre choix avec un portail. S'il n'y a pas d'escalier, ils seront créés. améliorer votre rang jusqu'à Prodigy pour remplacer une connexion existante . améliorer ton rang jusqu'à Illuminati pour pouvoir traverser les portails.",
["splitside"] = "Ce sort va connecter un escalier en dessous à un autre dans une direction horizontale de votre choix avec un portail. S'il n'y a pas d'escalier, ils seront créés. améliorer votre rang jusqu'à Prodigy pour annuler une connexion existante. améliorer ton rang jusqu'à Illuminati pour pouvoir traverser les portails.",
["splitrandom"] = "Ce sort va se connecter des escaliers à n'importe quelle intersection valide au même étage. S'il n'y a pas d'escaliers, ils seront créés. améliorer ton rang jusqu'à Illuminati pour pouvoir traverser les portails.",
["cancelsplit"] = "Ce sort va défausser tous les portails dans les escaliers. améliorer ton rang jusqu'à un disciple pour pouvoir supprimer les divisions de plateforme. améliorer ton rang jusqu'à Scholar pour lancer ce sort gratuitement.",
["splitforward"] = "Ce sort va connecter deux plates-formes dans une direction horizontale de votre choix avec un portail. améliorer ton rang jusqu'à Disciple pour pouvoir supprimer les séparations de plate-forme. Occuper des escaliers ne bloquera pas la connexion. améliorer ton rang jusqu'à Illuminati pour pouvoir traverser les portails.",

["splitter"] = "Ce sort est chronométré. Il permet de créer autant de splits de plateforme que l'on veut pendant une minute. améliorer ton rang jusqu'à Savant pour allonger le temps à 90 secondes. Casting Ce sort va aussi remplir la réserve de mana de tous les Archons avec au moins le rang Adept.",
["archonrigevent"] = "Ce sort est un sort de rig. Il va rig tous les escaliers normaux, un par un, avec un Archon Rig. Les escaliers, une fois activés, téléportent le joueur dans la direction dans laquelle il marchait, franchissant des escaliers bloquants. Après le déclenchement, les escaliers redeviendront normaux.",
["archonevent"] = "Ce sort est un sort d'évènement. Il créera des séparations hasardeuses sur tous les escaliers normaux.",
["archonaltevent"] = "Ce sort est un sort d'évènement. Il créera des fentes verticales uniquement sur tous les escaliers normaux.",
["archonmode"] = "Ce sort est un sort de drone. Il va changer le mode des drones en Archon. Les Archon Drones, si le nombre d'escaliers est dans les limites, lancera de façon hasardeuse des Split Spells et des Archon Rig sur des escaliers normaux. Les escaliers spéciaux seront restaurés à la place. Hors des limites, les drones vont créer et détruire respectivement.",
["archonrefill"] = overload,
["archonunion"] =  union,

--DRIFTER
["outdrift"] = "Ce sort fera le tour de la plate-forme inférieure autour de toute la zone de jeu au même niveau. Ne peut être lancé que sur les plates-formes extérieures. Classez-vous jusqu'à Strider pour obtenir un bonus de mana dans l'ascenseur.",
["indrift"] = "Ce sort créera une planche de surf temporaire, vous déplaçant vers une plate-forme dans la direction de votre choix. Classez-vous jusqu'à Strider pour obtenir un bonus de mana dans l'ascenseur.",
["updrift"] = "Ce sort créera un ascenseur utilisant des plates-formes inférieures et supérieures. Les plates-formes seront restaurées après une période de temps donnée. Classez-vous jusqu'à Vagabond pour accélérer le mouvement. Classez-vous jusqu'à Traveller pour pouvoir booster l'ascenseur jusqu'au niveau 2. Montez jusqu'à Strider pour pouvoir augmenter à nouveau la portance jusqu'au niveau 3.",
["diagdrift"] = "Ce sort créera un ascenseur latéral en utilisant ci-dessous et n'importe quelle plate-forme en diagonale. Les plates-formes seront restaurées après une période de temps donnée.",
["spin"] = "Ce sort effectuera une rotation de 180 degrés sous les escaliers. Montez jusqu'à Nomad pour pouvoir faire tourner des escaliers en dérive.",
["driftabove"] = "Ce sort s'élèvera au-dessus des escaliers, afin que vous puissiez passer en dessous et les monter, si vous le souhaitez.",

["riser"] = "Ce sort est chronométré. Il vous permet de créer autant d'ascenseurs à plate-forme verticale que vous le souhaitez pendant une minute. Vous pouvez également augmenter les ascenseurs tout en utilisant ce sort, si vous êtes suffisamment classé. améliorez votre rang jusqu'à Wayfarer pour prolonger le temps à 90 secondes. utiliser Ce sort va aussi remplir la réserve de mana de tous les Drifters avec au moins le rang Wanderer.",
["drifterrigevent"] = "Ce sort est un sort de rig. Il va rig tous les escaliers normaux, un par un, avec un Drifter Rig. Les escaliers, une fois activés, tournent. Améliorer ton rang jusqu'à Voyager to obtenir l'immunité à ce Rig.",
["drifterevent"] = "Ce sort est un sort d'évènement. Il tournera automatiquement tous les escaliers normaux.",
["drifteraltevent"] = "Ce sort est un sort d'évènement. Il soulèvera tous les escaliers normaux, vous permettant de traverser par en dessous.",
["driftermode"] = "Ce sort est un sort de drone. Il va changer le mode des drones en Drifter. Les Drifter Drones, si le nombre d'escaliers est dans les limites, lancera automatiquement Drift Spell et des Drifter Rig sur des escaliers normaux. Les escaliers spéciaux seront restaurés à la place. Hors des limites, les drones vont créer et détruire respectivement.",
["drifterrefill"] = overload,
["drifterunion"] = union,

	
--HERETIC
["createcursed"] = "Ce sort te permet de créer des escaliers maudits dans la direction choisie. Tout escalier traversant sera démoli. améliorer ton rang jusqu'à Bannished pour démolir des escaliers maudits traversants.",
["curse"] = "Ce sort va maudire ou non sous les escaliers, selon qu'ils sont déjà maudits.",
["curseabove"] = "Ce sort va maudire ou non au-dessus des escaliers, selon qu'ils sont déjà maudits. Les escaliers se soulèveront pendant un moment, vous permettant de traverser.",
["curseinter"] = "Ce sort va vous permettre de vous diriger vers la plate-forme opposée, s'il n'y a pas d'escalier sur le chemin. L'intersection deviendra maudite après ce sort, donc les autres joueurs ne pourront plus l'utiliser. améliorer ton rang jusqu'a Infidel pour pouvoir utiliser ce sort pour supprimer une malédiction d'intersection.",
["autodown"] = "Utilisez ce sort pour créer une section spéciale en miroir de l'ascenseur ET dans la partie inférieure de l'escalier. Seuls les hérétiques et des unions fantômes peuvent marcher sur cette section.",
["autoup"] = "Utilisez ce sort pour créer une section spéciale en miroir dans la partie supérieure de l'escalier. Les marches régulières seront abaissées. Seuls les unions fantômes et les hérétiques peuvent marcher sur cette section.",

["malediction"] = "Ce sort est chronométré. Il permet de créer autant d'escaliers maudits que l'on veut pendant une minute. améliorer ton rang jusqu'a Accursed pour étendre le temps à 90 secondes. Utiliser ce sort va aussi remplir la réserve de mana de tous les Heretics avec au moins le rang Stranger.",
["hereticrigevent"] = "Ce sort est un sort de rig. Il va rig tous les escaliers normaux, un par un, avec un Heretic Rig. Les escaliers, une fois activés, possèdent le joueur déclencheur. Ils devront trouver du Mana être libéré. ??Les joueurs possédés ne peuvent pas lancer de sorts. améliorer ton rang jusqu'à unbeliever pour gagner l'immunité à ce rig. améliorer ton rang jusqu'à Exiled pour obtenir 1 mana à chaque fois qu'un joueur est possédé.",
["hereticevent"] = "Ce sort est un sort d'évènement. Il transformera tous les escaliers normaux en schismes ascendants ou descendants.",
["hereticaltevent"] = "Ce sort est un sort d'évènement. Il va maudire tous les escaliers normaux.",
["hereticmode"] = "Ce sort est un sort de drone. Il va changer le mode des drones en Heretic. Les Heretic drones, si le nombre d'escaliers est dans les limites, lanceront à nouveau des sorts de schisme et des Heretic rigs sur des escaliers normaux. Les escaliers spéciaux seront restaurés à la place. Hors des limites, les drones vont créer et détruire respectivement.",
["hereticrefill"] = overload,
["hereticunion"] =  union,

--CHAMELEON
["ditch"] = "C'était un sort de voleur, avant qu'il ne soit rejeté. Il transformera un escalier normal ou Rigged en un escalier croisé.",
["warp"] = "C'était un sort de Wicked. Il déformera les escaliers normaux ou Rigged vers la plate-forme.",
["chameleonrigevent"] = "Ce sort est un sort de rig. Il va rig tous les escaliers normaux, un par un, avec un Chameleon Rig. Stairs une fois déclenché, exécutera l'effet rETom à partir de tous les autres rigs.",
["chamdown"] = "C'était un sort de Keeper, avant qu'il ne soit rejeté. Il fera descendre n'importe quel escalier normal ou truqué. Si vous avez classé Gardien à Capitaine, vous pouvez également déplacer des escaliers inversés.",
["chamdraw"] = "C'était un sort de Heretic, avant qu'il ne soit rejeté. Il transformera les escaliers en pont-levis, rendant la descente impossible à moins qu'un autre joueur n'active le pont par le bas.",
["chamdrawabove"] = "C'était un sort hérétique, avant qu'il ne soit rejeté. Il se transformera au-dessus des escaliers en pont-levis, vous permettant de passer. L'ascension est impossible à moins qu'un autre joueur n'active le pont d'en haut. Le rang Old Unbeliever n'est plus Le tirage automatique et actif par le bas n'est plus possible.",
["chameleonmode"] = "Ce sort est un sort de drone. Il va changer le mode des drones en Chameleon. Chameleon Drones, si le nombre d'escalier est dans la limite, vont, de façon hasardeuse, utiliser un sort de tous les autres modes, ou un Chameleon Rig sur des escaliers normaux. Les escaliers spéciaux seront restaurés à la place. Hors des limites, les drones vont créer et détruire respectivement.",
["chameleonrefill"] = overload,
["chameleonunion"] = union,

}

module.spells.manacosts = {
"0 Mana",
"1 Mana",
"2 Mana",
"3 Mana",
"4 Mana", 
"0 Mana + stairs",
"1 Mana + stairs",
"2 Mana + stairs",
"3 Mana + stairs", 
"", 
"10 Mana" 
}

module.spells.tokencosts = {

"1 Token",
"2 Tokens",
"3 Tokens",

["chameleonrigevent"] = "2 Tokens multiples",
["unlock"] = "(Débloquer pour 3 tokens)",
}

module.serverfeedback = {

["scancel"] = "Annuler le sort pour changer de classe",
["morph"] = "Sautez ici pour devenir le %s",
["raceclosed"] = "La course est maintenant fermée.",
["stay"] = "Restez dans le rond pour participer à la course!",
["falsestart"] = "Faux départ",
["secret"] = "Secret trouvé!",
["traveller"] = "Améliore ton rang jusqu'a Traveller pour booster les plate-formes montantes.",
["noboost"] = "Impossible de booster, il n'y a pas de plate-formes au dessus.",
["platformlocked"] = "La plate-forme cible est bloquée.",
["strider"] = "Améliore ton rang jusqu'a Strider pour booster deux fois les plate-formes montantes.",
["noupplatform"] = "Impossible de booster, il n'y a pas de plate-formes au dessus.",
["boosted"] = "Plate-forme boostée!",
["wrongdirection"] = "Tu ne peux pas utiliser ce sort dans cette direction.",
["cursed"] = "Des escaliers maudits sont dans le chemin!",
["banished"] = "Améliore ton rang jusqu'a Banished, pour démolir les escaliers maudits dans le chemin.",
["blocked"] = "Cette intersection est maudite.",
["infidel"] = "Améliore ton rang jusqu'a Infidel pour restorer les interstections.",
["admiral"] = "Améliore ton rang jusqu'a Admiral pour restorer les interstections.",
["nostairs"] = "Il n'y a pas d'escaliers ici.",
["noground"] = "Ce sort ne peut pas être utilisé sur le niveau du sol.",
["oddonly"] = "Ce sort ne peut pas être utilisé sur ce niveau.",
["reveal"] = "Tu as révélé des escaliers invisibles!",
["keeperrig"] = "Les escaliers bougent!",
["hackerrig"] = "Les escaliers ont glitché!",
["jokerrig"] = "Les escaliers tournent!",
["wickedrig"] = "Les escaliers se détruisent!",
["spectrerig"] = "Les escaliers sont fantômatiques!",
["notspectrerig"] = "Les escaliers ne sont PAS fantômatiques!",
["patronrig"] = "Tu as reçu 1 mana, de la part de %s!",
["notpatronrig"] = "Tu as reçu 1 mana, de la part de (player left)!",
["thiefrig"] = "%s A volé 1 mana!",
["mythiefrig"] = "Tu as volé un mana de %s",
["notthiefrig"] = "%s N'est plus un Thief - aucun mana volé.",
["leftthiefrig"] = "Thief a quitté la partie -  aucun mana volé.",
["hereticrig"] = "Tu es possédé!",
["archonrig"] = "Téléportation!",
["drifterrig"] = "Les escaliers tournent!",
["noabove"] = "Aucun escalier trouvé directement au dessus.",
["noblink"] = "Tu ne peux que passer à travers les escaliers bloquant le chemin.",
["noblink2"] = "Tu ne peux pas passer à travers les escaliers et les escaliers courbés vers le bas.",
["linklimit"] = "Seulement les \"above spells\" peuvent être exécutés sur les liens.",
["new20pass"] = "Limite de mana augmentée!",
["newchampass"] = "Tu peux maintenant changer de classe pendant la montée!",
["newspectrepass"] = "Tu peux maintenant devenir un SPECTRE!",
["charreset"] = "Élimination de la réinitialisation du personnage.",
["chamtutorial"] = "Tu ne peux pas utiliser le CHAMELEON dans le tutoriel!",
["champossessed"] = "Tu ne peux pas utiliser le chameleon en étant possédé.",
["chamspell"] = "S'il te plait, utilise ou annule le sort actuel premièrement.",
["morphpossessed"] = "Tu ne peux pas changer de classe en étant possédé.",
["nocode"] = "S'il te plait, entre le code premièrement.",
["invalid"] = "Ce code est invalide.",
["old"] = "Ce code n'est plus actif.",
["accepted"] = "Code accepté.",
["tryspectre"] = "Spectre débloqué pour 10 minutes! Ne quittez pas le serveur.",
["endspectre"] = "La démo du Spectre Finira dans 1 minute!",
["trycham"] = "Chameleon débloqué pour 10 minutes! Ne quittez pas le serveur.",
["endcham"] = "La démo du Chameleon Finira dans 1 minute!",
["trymana"] = "Bigger storage débloqué pour 10 minutes! Ne quittez pas le serveur.",
["endmana"] = "La démo du Bigger storage Finira dans 1 minute 1 minute!",
["used"] = "Ce code a déjà été utilisé.",
["tooshort"] = "Votre message était trop petit et non envoyé.",
["sent"] = "Votre message a été envoyé avec succès, merci.",
["noreshuffle"] = "Choisis le mode remaniement avant!",
["oneoverload"] = "tu ne peux pas avoir plusieurs surcharges de mana actifs.",
["overstarted"] = "tu as activé une surcharge de mana!",
["overended"] = "Surcharge de mana terminée.",
["2minshare"] = "Au moins 2 mana requis...",
["noshare"] = "Pas de joueur proche pour recevoir le mana...",
["noinf"] = "Tu ne peux pas donner du mana infini!",
["toomuch"] = "%s a le maximum de mana!",
["shared"] = "Mana partagé avec %s!",
["received"] = "%s a partagé du mana avec toi!",
["muted"] = "% est maintenant muet.",
["unmuted"] =  "%s n'est maintenant plus muet.",
["kicked"] = "%s a été viré!",
["banned"] = "%s a été banni!",
["mekicked"] = "%s t'a viré de leur serveur.",
["mebanned"] = "%s t'a banni de leur serveur.",
["permban"] = "%s t'a banni de ce jeu.",
["kick"] = "%s t'a viré de ce jeu.",
["48ban"] = "%s t'a banni pour 48 heures.",
["exiled"] = "Tu es banni(e)s de ce serveur privé ! CE N'EST PAS UN BAN DU JEU",
["permbanned"] = "Tu es banni(e)s de ce jeu.",
["timeout"] = "Ton ban se terminera dans : %02i heures et %02i minutes.",
["notinrace"] = "Tu ne peux pas switch en mode infini durant une course!",
["notinreg"] = "Tu ne peux pas switch en mode infini durant une régénération!",
["infinite"] = "Le serveur est maintenant en mode infini!",
["classic"] = "Le serveur est en mode classique",
["casual"] = "Les joueurs normaux peuvent maintenant utiliser des sorts!",
["nocasual"] = "Les joueurs normaux ne peuvent plus utiliser de sorts",
["purge"] = "La Purge va maintenant causer une régénération en mode classique!",
["nopurge"] = "La Purge ne va plus causer de régénération en mode classique!",
["noevens"] = "Les niveaux paires sont maintenant limités",
["evens"] = "Les niveaux paires ne sont plus limitésEven levels are now fully enabled",
["orbmoves"] = "L'orbe de fin de niveau va maintenant bouger de façon hasardeuse!",
["orbstopped"] = "L'orbe de fin de niveau ne va plus bouger d'elle même!",
["infreg"] = "Les escaliers vont se régénérer après un mode infini!",
["noinfreg"] = "Les escaliers ne vont pas se régénérer après un mode infini!",
["drones"] = "Petits drones activés!",
["nodrones"] = "Petits drones désactivés!",
["dronefix"] = "Les drones vont restorer les escaliers!",
["nodronefix"] = "Les drones ne vont pas restaurer les escaliers!",
["droneunlock"] = "Les drones vont retirer les intersections maudites!",
["nodroneunlock"] = "Les drones ne vont pas retirer les intersections maudites!",
["droneuncurse"] = "Les drones vont restaurer les escaliers maudits!",
["nodroneuncurse"] = "Les drones ne vont pas restaurer les escaliers maudits",
["dronemove"] = "Les drones vont bouger les escaliers en mode défaut!",
["nodronemove"] = "Les drones ne vont pas bouger les escaliers en mode défaut!",
["dronespin"] = "Les drones vont tourner les escaliers en mode défaut!",
["nodronespin"] = "Les drones vont tourner les escaliers en mode défaut!",
["noinput"] = "S'il te plait entre une valeur!",
["nonumber"] = "S'il te plait entre un nombre!",
["notrace"] = "Tu ne peux pas changer les niveaux d'une tour pendant une course!",
["notultimate"] = "Tu ne peux pas changer les niveaux d'une tour pendant un sort ultime!",
["notregen"] = "Tu ne peux pas changer les niveaux d'une tour pendant une régénération!",
["wait"] = "Les niveaux de la tour sont en train de changer, s'il te plait attends...",
["duration"] = "Durée de la course changée (Cela ne changera pas la course actuelle)",
["init"] = "Durée des intervales infinies changée",
["reduction"] = "Réduction infinie changée",
["mininf"] = "Temps minimum d'intervale changé",
["cooldown"] = "Temps de rechargement des Rigs et sorts d'évènement",
["speed"] = "Vitesse des petits drones changée",
["spin"] = "Vitesse d'utilisation de sorts des petits drones changée",
["max"] = "Nombre maximum d'escaliers cibles changé",
["min"] = "Nombre minimum d'escaliers cibles changé",
["curse"] = "Chance de malédiction des escaliers par les drones changée",
["block"] = "Chance de malédiction des intersections par les drones changée",
["lock"] = "Tu ne peux plus utiliser de sorts maintenant",
["ultwait"] = "Un autre sort ultime est en cours. Attends.",
["regwait"] = "Tu ne peux pas utiliser de Rigs ou des sorts d'évènement lors d'une régénération.",
["coolwait"] = "Tu ne peux pas utiliser de Rigs ou des sorts d'évènement pour le moment, attends. ",
["notfound"] = "Escalier non trouvé.",
["normalrig"] = "Ce sort ne fonctionne seulement sur les escaliers normaux et Riggés.",
["locked"] = "Ces escaliers sont bloqués.",
["nocursedblink"] = "Tu ne peux pas passer autour des escaliers maudits.",
["isblocked"] = "Cette intersection est déjà maudite.",
["cantblock"] = "Ne peut pas maudire, il y a déjà des escaliers ici. (peuvent être invisibles)",
["cantblock2"] = "Ne peut pas maudire, il y  a des escaliers croisés dans le chemin. (peuvent être invisibles)",
["noway"] = "Des escaliers sont dans le chemin. (peuvent être invisibles)",
["noway2"] = "Des escaliers croisés sont dans le chemin. (peuvent être invisibles)",
["noplatform"] = "Aucune plate-forme trouvé dans cette direction.",
["nopass"] = "Les passes ne peuvent être créés seulement sur les plate-formes extérieures.",
["pass"] = "Passe déjà présent.",
["link"] = "Lien déjà présent.",
["outdrift"] = "Les dérivations extérieures ne peuvent être créées seulement sur les plate-formes extérieures.",
["cantgate"] = "Cette direction est bloquée.",
["wall"] = "Mur déjà présent.",
["nocurse"] = "Seulement les escaliers normaux, maudits ou riggés peuvent être maudits/restaurés.",
["nogate"] = "Ces escaliers n'ont pas de portail.",
["noghost"] = "Uniquement les escaliers fantômes peuvent être Dé-fantômisés.",
["noflip"] = "Seulement les escaliers normaux, tournés ou riggés peuvent être retournés.",
["prodigy"] = "Tu as besoin du rang Prodigy, pour passer à travers les portails.",
["wrongsplit"] = "L'autre portail doit être dans la zone de jeu.",
["blockedplit"] = "Ne peut pas créer de portail, l'intersection cible est maudite.",
["cursedtarget"] = "Il y a des escaliers maudits dans cette direction.",
["lockedsplit"] = "Ne peut pas créer les portails, l'autre escalier est bloqué.",
["failedgate"] = "La création de portail a échoué.",
["nomove"] = "Seulement les escaliers normaux, tournés ou riggés peuvent être bougés.",
["controller"] = "Tu as besoin du rang Controller, pour bouger les escaliers tournés.",
["wrongmove"] = "Les escaliers ne peuvent être bougés hors de la zone de jeu.",
["blockedmove"] = "Ne peut pas bouger l'escalier, l'intersection cible est maudite.",
["lockedmove"] = "Ne peut pas bouger l'escalier maintenant, les escaliers bloquant sont bloqués.",
["normal"] = "Ces escaliers sont normaux.",
["nomad"] = "Tu as besoin du rang Nomad pour faire dériver les escaliers tournés.",
["hijacker"] = "Tu as besoin du rang Hijacker pour volez chaque escalier non-maudit.",
["nocursesteal"] = "Les escaliers maudits ne peuvent être volés.",
["lockedinter"] = "Cette intersection est bloquée.",
["possessed"] = "Tu ne peux pas utiliser de sorts quand tu es possédé.",
["lockedspell"] = "Ce sort est bloqué!",
["unlocked"] = "Sort débloqué!",
["nomana"] = "Pas suffisament de mana!",
["spelllock"] = "Tu ne peux pas utiliser de sorts pour l'instant",
["notokens"] = "Pas suffisament de tokens!",
["nothere"] = "Tu ne peux pas utiliser ce sort dans le tutoriel...",
["onlyracers"] = "Uniquement les joueurs de course peuvent utiliser des sorts.",
["cancelfirst"] = "Tu as besoin d'annuler le sort actuel avant...",
["stashfull"] = "Ton stock d'escalier est complet.",
["stashempty"] = "Tu as besoin de voler un escalier avant d'utiliser ce sort.",
["notdefault"] = "Les drones ont besoin d'être de retour en mode défaut avant. Attends.",
["cooldownwait"] = "Tu ne peux pas utiliser de sorts Rigs et d'évènement pour le moment, attends %d secondes.",
["nospellsnow"] = "Tu ne peux pas utiliser de sorts pour le moment.",

["unknown"] = "Erreur inconnue.",

}

module.serverbroadcast = {
["pranked"] = "%s a piègé %s!",
["found"] = "%s a trouvé les escaliers insivible de %s!",
["disco"] = "%s s'amuse avec la musique disco de %s.",
["obby"] = "%s essaye le parcour de %s.",
["default"] = "Les drones sont de retour en mode normal.",
["regen"] = "La cage d'escalier se régénère.",
["done"] = "La régénération est complète.",
["union"] = "%s a fusioné avec les fantômes !",
["eliminated"] = "%s a été éliminé.",
["won"] = "%s a gagné la course!",
["falsestart"] = "Faux départ.",
["countdown"] = "Course dans %d secondes!",
["2min"] = "Deux joueurs minimum requis pour commencer une course classique!",
["noplayers"] = "Pas de coureurs, le mode infini ne commencera pas!",
["nojoin"] = "La course est maintenant fermée - Aucun autre joueur ne peut rejoindre.",
["allfalse"] = "Tous les joueurs ont fait un faux départ!",
["safety"] = "Les niveaux de la tour ont changés, cette course ne va pas commencer.",
["leader"] = "%s est en tête!",
["toolate"] = "Personne n'a atteint l'orbe dans le temps imparti!",

}

module.localfeedback = {

["cancel"] = "Annule un autre sort avant!",
["nomana"] = "Pas suffisament de mana!",
["notokens"] = "Pas suffisament de Tokens!",
["unlocked"] = "Sort débloqué!",
["maxmana"] = "Votre mana est déjà au maximum!",
["nopurchase"] = "Tu n'as pas besoin d'acheter du mana dans le tutoriel!",
["hascham"] = "Tu as déjà le passe Chameleon!",
["hasspectre"] = "Tu as déjà le passe Spectre!",
["hasmana"] = "Tu as déjà le passe Stockage plus grand!",
["nomuggle"] = "Tu as cru qu'il y avait des sorts ultime pour le Muggle mais il n'y en a pas.",
["nocham"] = "Tu as cru qu'il y avait des sorts ultime pour le Chameleon mais il n'y en a pas.",
["nonone"] = "Tu as cru qu'il y avait des sorts ultime pour le None mais il n'y en a pas.",
["nounlocks"] = "Débloque tous les sorts basiques avant de débloquer les sorts ultimes!",
["onetoken"] = "Tu as reçu un tokens de sort de %s !",
["moretokens"] = "Tu as reçu plusieurs tokens de sort de %s!",
["music"] = "Musique changée avec succès.",
["nomusic"] = "Musique non chargée.",
["noteleport"] = "Téléporation ratée!", 
["norefresh"] = "Tu ne peux pas rafraichir pour l'instant.",

}

module.switchon = {

["JOKER"] = "Tu ne vas pas révéler les escaliers invisibles.",
["WICKED"] = "Tu ne vas pas activer les Wicked Rig en dessous.",
["KEEPER"] = "Tu ne vas pas activer les Keeper Rig en dessous.",
["SPECTRE"] = "Tu ne vas pas activer les Spectre Rig en dessous.",
["HACKER"] = "Tu ne vas pas activer les Hacker Rig en dessous.",
["ARCHON"] = "Uniquement les téléportations verticale vont te téléporter.",
["DRIFTER"] = "Tu ne vas pas activer les Drifter Rig dessous.",

}

module.switchoff = {

["JOKER"] = "Tu va maintenant révéler les escalier invisibles.",
["WICKED"] = "Tu vas maintenant activer les Wicked Rig en dessous.",
["KEEPER"] = "Tu vas maintenant activer les Keeper Rig en dessous.",
["SPECTRE"] = "Tu vas maintenant activer les Spectre Rig en dessous.",
["HACKER"] = "Tu vas maintenant activer les Hacker Rig en dessous.",
["ARCHON"] = "Toutes les téléportation à pars les téléportations vers le bas vont te téléporter.",
["DRIFTER"] = "Tu vas maintenant activer les Drifter Rig en dessous.",
	
}

module.events = {
["patronrigevent"] = "PATRON RIG EN COURS",
["patronevent"] = "SURCHARGE D'ESCALIERS EN COURS",
["patronaltevent"] = "EVENEMENT DE RAPETISSEMENT",
["jokerrigevent"] = "JOKER RIG EN COURS",
["jokeraltevent"] = "EVENEMENT DE TOURNAGE",
["jokerevent"] = "EVENEMENT D'INVISIBILITE",
["wickedrigevent"] = "WICKED RIG EN COURS",
["wickedaltevent"] = "EVENEMENT DE PURGE",
["wickedevent"] = "EVENEMENT DE DESTRUCTION",
["keeperrigevent"] = "KEEPER RIG EN COURS",
["keeperevent"] = "EVENEMENENT DE REARRANGEMENT",
["keeperaltevent"] = "EVENEMENT DE RESTORATION",
["spectrerigevent"] = "SPECTRE RIG EN COURS",
["spectreevent"] = "EVENEMENT ECLIPSE",
["spectrealtevent"] = "EVENEMENT FANTÔME",
["hackerrigevent"] = "HACKER RIG EN COURS",
["hackerevent"] = "EVENEMENT D'hackerevent",
["hackeraltevent"] = "EVENEMENT DE LA BRECHE",
["thiefrigevent"] = "THIEF RIG EN COURS",
["thiefevent"] = "EVENEMENT DES TERRES PLATES",
["parpassall"] = "EVENEMENT BYPASS",
["hereticrigevent"] = "HERETIC RIG EN COURS",
["hereticevent"] = "EVENEMENT SCHISME",
["hereticaltevent"] = "EVENEMENT DAMNATIQUE",
["archonrigevent"] = "ARCHON RIG EN COURS",
["archonevent"] = "EVENEMENT DIVISE",
["archonaltevent"] = "EVENEMENT DE LA DIVISION",
["drifterevent"] = "EVENEMENT DE LA DERIVE",
["drifteraltevent"] = "EVENEMENT DE LA PORTEE",
["drifterrigevent"] = "DRIFTER RIG EN COURS",
["chameleonrigevent"] = "CHAMELEON RIG EN COURS",

}

module.finished = {

["patronrigevent"] = "PATRON RIG EST COMPLET",
["patronevent"] = "SURCHARGE D'ESCALIERS TERMINE",
["patronaltevent"] = "EVENEMENT DE RAPETISSEMENT TERMINE",
["jokerrigevent"] = "JOKER RIG EST COMPLET",
["jokeraltevent"] = "EVENEMENT DE TOURNAGE TERMINE",
["jokerevent"] = "EVENEMENT D'INVISIBILITE TERMINE",
["wickedrigevent"] = "WICKED RIG EST COMPLET",
["wickedaltevent"] = "EVENEMENT DE LA PURGE TERMINE",
["wickedevent"] = "EVENEMENT DE DESTRUCTION TERMINE",
["keeperrigevent"] = "KEEPER RIG EST COMPLET",
["keeperevent"] = "EVENEMENT DE REARRANGEMENT TERMINE",
["keeperaltevent"] = "EVENEMENT DE RESTAURATION TERMINE",
["spectrerigevent"] = "SPECTRE RIG EST COMPLET",
["spectreevent"] = "EVENEMENT ECLIPSE TERMINE",
["spectrealtevent"] = "EVENEMENT FANTÔME TERMINE",
["hackerrigevent"] = "HACKER RIG EST COMPLET",
["hackerevent"] = "EVENEMENT D'hackerevent TERMINE",
["hackeraltevent"] = "EVENEMENT DE LA BRECHE TERMINE",
["thiefrigevent"] = "THIEF RIG EST COMPLET",
["thiefevent"] = "EVENEMENT DES TERRES PLATES TERMINE",
["parpassall"] = "EVENEMENT BYPASS TERMINE",
["hereticrigevent"] = "HERETIC RIG EST COMPLET",
["hereticevent"] = "EVENEMENT SCHISME TERMINE",
["hereticaltevent"] = "EVENEMENT DAMNATIQUE TERMINE",
["archonrigevent"] = "ARCHON RIG IN COMPLETE",
["archonevent"] = "EVENEMENT DIVISE TERMINE",
["archonaltevent"] = "EVENEMENT DE LA DIVISION TERMINE",
["drifterevent"] = "EVENEMENT DE LA DERIVE TERMINE",
["drifteraltevent"] = "EVENEMENT DE LA PORTEE TERMINE",
["drifterrigevent"] = "DRIFTER RIG EST COMPLET",
["chameleonrigevent"] = "CHAMELEON RIG EST COMPLET",

}

module.timedspells = {
["summoner"] = "%s vient d'utiliser un sort Invocateur!",
["flipper"] = "%s vient d'utiliser un sort Retournement!",
["bender"] = "%s vient d'utiliser un sort Cintreuse!",
["ascension"] = "%s vient d'utiliser un sort Ascension!",
["traveller"] = "%s vient d'utiliser un sort Chatoyance!",
["speedup"] = "%s vient d'utiliser un sort Exploitation de la vitesse!",
["heist"] = "%s vient d'utiliser un sort Braquage!",
["splitter"] = "%s vient d'utiliser un sort Séparateur!",
["riser"] = "%s vient d'utiliser un sort Montant!",
["malediction"] = "%s vient d'utiliser un sort Malédiction!",

}

module.eventspells = {
	
["patronrigevent"] = "%s vient de rigger tous les escaliers normaux avec un cadeau de mana!",
["patronaltevent"] = "%s vient de rapetisser tous les escaliers normaux!",
["patronevent"] = "%s vient de surcharger la tour avec des escaliers!",
["jokeraltevent"] = "%s vient de retourner tous les escaliers normaux!",
["jokerrigevent"] = "%s vient de rigger tous les escaliers normaux avec un sort de retournement!",
["jokerevent"] = "%s vient de cacher tous les escaliers normaux!",
["wickedrigevent"] = "%s vient de rigger tous les escaliers normaux avec un sort de destruction!",
["wickedaltevent"] = "%s vient de détruire TOUT les escaliers!",
["wickedevent"] = "%s vient de détruire tout les escaliers normaux!",
["keeperrigevent"] = "%s vient de rigger tous les escaliers normaux avec un sort de mouvement hasardeux!",
["keeperevent"] = "%s vient de bouger tous les escaliers normaux de façon hasardeuse!",
["keeperaltevent"] = "%s vient de restaurer tous les escaliers!",
["spectrerigevent"] = "%s vient de rigger tous les escaliers normaux avec 50% de chance de fantômisation!",
["spectreevent"] = "%s vient de bouger de façon fantômatique tous les escaliers normaux!",
["spectrealtevent"] = "%s vient de fantômiser tous les escaliers normaux!",
["hackerrigevent"] = "%s vient de rigger tous les escaliers normaux avec un sort de glitch!",
["hackerevent"] = "%s vient de tourner tous les escaliers normaux en escalateurs!",
["hackeraltevent"] = "%s vient de tourner tous les escaliers normaux en escalateurs vers le haut!",
["thiefrigevent"] = "%s vient de rigger tous les escaliers normaux avec un sort de vol de mana !",
["thiefevent"] = "%s vient d'applatir tous les escaliers normaux!",
["parpassall"] = "%s vient de créer des bypass sur tous les escaliers!",
["newmode"] = "%s vient de changer les drones en mode %s!",
["archonrigevent"] = "%s vient de rigger tous les escaliers normaux avec un sort de téléportation!",
["archonevent"] = "%s vient de diviser de façon hasardeuse tous les escaliers!",
["archonaltevent"] = "%s vient de disiver verticalement tous les escaliers normaux!",
["drifterrigevent"] = "%s vient de rigger tous les escaliers avec un sort de tournement!",
["drifterevent"] = "%s vient de dériver tous les escaliers normaux de façon hasardeuse!",
["drifteraltevent"] = "%s vient de dériver tous les escaliers normaux!",
["hereticrigevent"] = "%s vient de rigger tous les escaliers normaux avec un sort de possession!",
["hereticevent"] = "%s vient de schismatiser tous les escaliers normaux!",
["hereticaltevent"] = "%s vient de maudir tous les escaliers normaux!",
["patronrefill"] = "",
["jokerrefill"] = "",
["wickedrefill"] = "",
["keeperrefill"] = "",
["spectrerefill"] = "",
["hackerrefill"] = "",
["thiefrefill"] = "",
["archonrefill"] = "",
["drifterrefill"] = "",
["hereticrefill"] = "",
["swap"] = "",
["chameleonrigevent"] = "%s vient de rigger tous les escaliers normaux avec un sort mystérieux!"
}

--ERRATA

--stuff that was wrong
module.gui.settings["rank"] = "Montre ton rang total dans le panneau d'affichage des avatars"
module.spells.descriptions["link"] = "Ce sort créé un pont d'énergie entre deux plate-formes pendant 60 secondes. Les liens sont non-tangibles depuis en dessous. Améliore ton rang jusqu'a Creator pour étendre le temps jusqu'a 120 secondes."
module.spells.descriptions["outdrift"] = "Ce sort va faire dériver la plate-forme en dessous autour de toute la zone de jeu, sur le même niveau. Peut être utilisé uniquement sur les plate-formes les plus éloignées du centre."
module.spells.descriptions["indrift"] = "Ce sort va créer une planche de surf temporaire, te déplaçant dans une direction de ton choix."
module.spells.descriptions["move"] = "Ce sort déplacera les escaliers de manière horizontale, détruisant tous les escaliers sur le chemin. Après le lancer, des flèches apparaîtront sur les escaliers, vous invitant à choisir la direction. Les escaliers ne peuvent pas être déplacés en dehors de la zone de jeu. Améliore ton rang jusqu'a Controller pour déplacer les escaliers retournés."
module.spells.descriptions["rotate"] = "Ce sort fera pivoter les escaliers de manière horizontale, détruisant tous les escaliers sur le chemin. Après le lancer, des flèches apparaîtront sur les escaliers, vous invitant à choisir la direction. Les escaliers ne peuvent pas être tournés en dehors de la zone de jeu. Améliore ton rang jusqu'a Controller pour déplacer les escaliers retournés."

module.static["vr_5"] = "Utilise ton stick multidirectionnel gauche pour avancer ou reculer. Le déplacer vers la droite ou la gauche va tourner ta caméra."
module.gui.ranks["next"] = "Click sur la flèche de droite, pour voir les requis pour le prochain rang."
module.serverfeedback["admiral2"] = "Améliore ton rang jusqu'a Admiral pour pouvoir restorer les escaliers maudits."
module.serverfeedback["annihilator"] = "Améliore ton rang jusqu'a Annihilator pour pouvoir détruire les escaliers maudits."
module.serverfeedback["disciple"] = "Améliore ton rang jusqu'a Disciple pour détruire les divicions de plate-formes."
module.serverfeedback["toponly"] = "le sort 'faire venir l'orbe' peut seulement être utilisé sur le niveau maximum."
module.serverbroadcast["go"] = "GO!"
module.serverbroadcast["over"] = "Course terminée!"
module.tutorial["tut_small_init"] = "Saute pour commencer le tutoriel."

module.static["dailies"] = "RECORDS D'AUJOURD'HUI"
module.static["most_climbs"] = "PLUS DE MONTÉES"
module.static["most_wins"] = "PLUS DE VICTOIRES DE COURSES" 

module.events["regen"] = "Les escaliers se régénèrent"
module.finished["regen"] = "Régénération terminée"

module.spells.extras = {
	
	["Prompt"] = "Clique sur un sort en dessous, pour savoir comment l'utiliser",
	["Title1"] = "Sorts basiques",
	["Title2"] = "Sorts ultimes uniques",
	["Title3"] = "Sorts ultimes partagés",
	["ManaCost"] = "Coût en mana: %s", 
	["TokenCost"] = "Coût en token: %s", 
	["Special"] = "Requis spéciaux: %s",
	["Execution"] = "Exécution: %s",
	["Description"] = "Description: %s",
	["basic"] = "Basique",
	["ultimate"] = "Ultime",
	["unlock"] = "0 (3 pour débloquer)",
	["none"] = "Aucun requis spécifiques",
}

module.gui.basic.jumpdelay = "Rechargement de saut"
module.gui.basic.dancetime = "TEMPS DE DANSE!"

module.gui.mana = {
	
	["mana"] = "MANA", --main name
	["ghost"] = "FANTÔME",
	["spirit"] = "ESPRIT", --only for spirit spectres
	["welcome"] = "BIENVENU",
	["drones"] = "DRONES",
	["orb"] = "ORBE",
	["refill"] = "RECHARGE", --for all 2nd rank bonuses
	["overload"] = "SURCHAGE",
	["steal"] = "VOL",
	["gift"] = "CADEAU",
	["share"] = "PARTAGE",
	["prank"] = "PRANK",
	["possession"] = "POSSESSION",
	["ritual"] = "RITUEL",
	["purge"] = "PURGE",
	["blessing"] = "BÉNÉDICTION",
	["hack"] = "HACK",
	["stash"] = "PLANQUE",
	["backdoor"] = "PORTE DE DERRIÈRE",
	["chamber"] = "CHAMBRE",
	["base"] = "BASE",
	["circus"] = "CIRQUE",
	["shelter"] = "ABRI",
	["haven"] = "HAVRE",
	["study"] = "BUREAU",
	["nether"] = "ENFER",
	["guild"] = "GUILDE",
	["nexus"] = "LIAISON",
	["oasis"] = "OASIS",
	
}
	
module.gui.hints = {
	["bcancel"] = "Appuis sur B pour annuler", --xbox b
	["acancel"] = "Clique encore pour annuler",
	["ocancel"] = "Annule un autre sort avant", 
}

module.gui.gameover.extras = {
	
	["noobs"] = "Les tutoriels sont pour les nuls!",
	["possessed"] = "Ces Heretics énervants!",
	["new"] = "Nouveau rang acquis - %s",
	["none1"] = "ATTENDS! QUOI?",
	["none2"] = "Est-ce que jeu",
	["none3"] = "A des sorts?"
	
}

module.gui.gameover.raceplacements = {
	"TU AS GAGNÉ LA COURSE!",
	"SECONDE PLACE!",
	"TROISIÈME PLACE!",
	"Tu as été placé quatrième.",
	"Tu as été placé cinquième.",
	"Tu as été placé sixième.",
	"Tu as été placé septième.",
	"Tu as été placé huitième.",
	"Tu as été placé neuvième.",
	"Tu as été placé dixième.",
	"Tu as été placé onzième.",
	"Tu as été placé douxième.",
}

return module
--Traduit par : Alexletueurdecreeper