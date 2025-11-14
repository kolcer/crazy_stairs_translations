Crazy Stairs + VR (Roblox game) translations repository.

RULES:
1. All translations have to be created from the English original (en.lua)
2. Current version of the English file is:
   4.1
3. Please provide the version your translation uses so we can keep track of outdated files.
4. To avoid having too many versions of the original, only I (sleazel) will be making bulk updates to the original. Let me know if anything needs to be fixed. Use GitHub to keep track of changes.
5. Version provided in the Discord thread (pin) is to be considered as 0.0 version and is now outdated.
6. Translations are provided free of charge.
7. Collaborations are very welcome.
8. To become a translator, contact me on Discord. I reserve the right to reject any application without giving a reason.
9. Files are manually added to the game, so let me know when your translation is ready/updated.

GENERAL TRANSLATION GUIDELINES:
1. Do not translate class names (Patron, Joker, etc.)
2. Do not translate rank names (Fan, Friend, etc.)
3. Do not translate overall ranks (Overmind, Admin, Prank me)
4. Do not translate rigs (Patron Rig, Joker Rig, etc.)
5. Translations do not have to be literal. Feel free to be creative. You can completely change class mottos, quotes and endgame messages.
6. Do not translate database keys (anything in square [" "] brackets)
7. Some of the keys may have outdated meanings. For example ["movedown"] spell is really Keeper's restore, and ["restore"] is now Patron's Call the Orb. This is due to compatibility reasons.
   (if I change the keys, players would have to unlock the spell again). Do not trust the keys.
8. Where should I start? - Anywhere, but I suggest starting from Spell names, as those may be referenced elsewhere.
9. If you find "\n" in translation, this simply forces a new line. Feel free to remove, add your own or move it around.
10. Lines starting with `--` are comments only for your and my convenience.
11. Name your file with 2-letter country code (https://www.iban.com/country-codes) with a `.lua` extension.

STEP-BY-STEP GUIDE:
1. `module.gui.basic` - Basic GUI elements - keep it as short as possible, so it fits in the images. %s will be replaced with the current Drone mode alignment.
2. `module.gui.switcher` - Tower switcher window.
3. `module.gui.serversettings` - Settings for the custom tower. Some may be unused now, but I may re-enable server discovery in future.
4. `module.gui.shop` - Robux shop. %d will be replaced with the current price.
5. `module.gui.nospellsbar` - Texts on the bottom spell bar.
6. `module.gui.stats` - Stats and badges window.
7. `module.gui.questions` - Various questions with yes or no answer (checkmark or cross)
8. `module.gui.codes` - Code input window.
9. `module.gui.jukebox` - Texts appearing in the Jukebox.
10. `module.gui.results` - Race results texts.
11. `module.spells` - Spells section:
- `local CommonSpellNames` - Shared spells that have the same names except for the alignment name. %s will be replaced with the class name.
- `module.spells.names` - Spell names appearing during "mouse hover" and on the sanctuary spell screens. Please be aware of the outdated and misleading keys in this section.
12. `module.spells.descriptions` - Spell descriptions subsection:
- `local union` - common description for Ghost Union.
- `local overload` - common description for Mana Overload.
- `local timed` - common beginning of all timed spells (first ultimate). Please leave the space at the end, as this will be merged with the rest of the description.
- `local rig` - common beginning of all rig spells (second ultimate).  Please leave the space at the end, as this will be merged with the rest of the description.
- `local event` - common beginning of the majority of event spells (third and fourth ultimate). Please leave the space at the end, as this will be merged with the rest of the description.
- `local fill` - common beginning of some events (Patron fill, Gremlin fill, and Thief fill). Please leave the space at the end, as this will be merged with the rest of the description.
- `local mode` - common description of the drone mode spell. First %s will be replaced with the alignment name, second with the Rig name and third with the specific spell for this mode.
- `local timedExtra` - common ending of the timed spells (first ultimate). Please leave the space at the beginning. First %s will be replaced with relevant rank, second with relevant alignment and third, again, with relevant rank.
- `module.spells.descriptions` - Spell descriptions appearing in the sanctuaries. Please be aware of the outdated and misleading keys in this section. Follow the English file as an example on how to use common spell descriptions.
13. `module.gui.ranks` - Rank descriptions.
- `local CommonPerksInsertAlignment` - Common descriptions for first and second rank. %s will be replaced with Alignment Name.
- `local CommonPerksInsertTimedSpell` - Common descriptions for third and seventh rank. %s will be replaced with the timed spell name that you have translated in `module.spells.names`. %% will be replaced with a single %.
- `module.gui.ranks` - %d will be replaced with a number. %s usually means class name.
14. `module.gui.multitokens` - Token selection window.
15. `module.gui.feedback` - Private feedback that is being sent to the Discord server.
16. `module.gui.settings` - Settings window.
17. `module.gui.gameover` - Game over screen:
- `module.gui.gameover.results` - Results descriptions (white text)
- `module.gui.gameover.messages` - Silly endgame messages. You may add your own. You may remove some. (Count does not need to be 10). You may just write your own without translating.
- `module.gui.gameover.maxrank` - This text will appear when a player acquires the top rank (50 climbs).
- `module.gui.gameover.credits` - Please be aware that actual credits will be kept elsewhere, so I can automatically add testers and translators to each file, without needing you to update your own file. 
18. `module.gui.static` - The in-game lobby, sanctuaries and Muggle Home "spell" screen translations. It also includes a normally hidden VR welcome screen.
19. `module.tutorial` - Tutorial translations.
20. `module.where` - Text appearing on spell screens, describing where a spell is normally used.
21. `module.guide` - More specific text describing spell execution, appearing on spell screens. This is also used to generate guide arrows, so it will match your translation.
22. `module.spells.manacosts` - Mana costs appearing together with spell name on mouse hover. Some are unused.
23. `module.spells.tokencosts` - Token costs.
24. `module.serverfeedback` - Red messages appearing on the bottom of the screen. Some may be unused.
25. `module.serverbroadcast` - Extra server-wide chat messages. This may be scrapped or reworked in 4.1. %s is replaced with player`s name. %d is a number. Keep the %s order (%s pranked %s), so that pranker is not swapped with victim.
26. `module.localfeedback` - Some extra red messages.
27. `module.switchon` and module.switchoff` - Extra red messages appearing after toggling the "Z" button.
28. local timedSpell = "%s just cast the %s spell!" - Timed spell chat message. First %s will be replaced with the player name, second with the spell name from `module.spells.names`.
29. `module.eventspells` - Event spells chat messages - those may be scrapped in 4.1.
30. `module.spells.extras` - Extra texts for spell screens. %s will be replaced with the relevant description.
31. `module.gui.mana` - extra texts appearing in the middle of the screen, when getting (or losing) mana any other way than collecting it with the avatar.
32. `module.gui.gameover.extras` - Extra texts for the endgame screen.
33. `module.gui.gameover.raceplacements` - Extra texts appearing on the endgame screen after a race.

Please ignore everything under --PREPARATION--














