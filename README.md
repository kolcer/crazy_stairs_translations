Crazy Stairs + VR (Roblox game) translations repository.

RULES:
1. All translations have to be created from the English original (en.lua)
2. Current version of the English file is:
   1.0
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
5. `module.gui.spellbar` - Texts on the bottom spell bar.
6. `module.gui.stats` - Text appearing on the bottom left side of the screen. %s will be replaced with an Alignment, %d will be replaced by a count and %.2f with time with 2 decimal points.
7. `module.gui.timedspell` - Text appearing during possession, after release and after timed spell conclusion.
8. `module.gui.activatecham` -  Special window appearing, to prevent accidental chameleon activations.
9. `module.gui.canceltimed` - Optional cancel timed spell window.
10. `module.gui.climbtimer` - Climb timer inactive texts. (This one will probably be scrapped in 4.1 GUI overhaul)
11. `module.gui.codes` - Code input window.
12. `module.gui.gagues` - Texts appearing during events and rigs execution. Be aware that by default, only one gauge appears. Turn on the other two in settings. %d will be replaced with amount of elements.
 %.1f%% will be replaced with one decimal point percentage  - example 73.6%.
13. `module.gui.jukebox` - Texts appearing in the Jukebox.
14. `module.gui.results` - Race results texts.
15. `module.gui.racetimer` - Race timer inactive texts. (This one will probably be scrapped in 4.1 GUI overhaul)
16. `module.spells.names` - Spell names section:
- `local CommonSpellNames` - Shared spells that have the same names except for the alignment name. %s will be replaced with the class name.
- `module.spells.names` - Spell names appearing during "mouse hover" and on the sanctuary spell screens. Please be aware of the outdated and misleading keys in this section.
17. `module.spells.descriptions` - Spell descriptions section:
- `local union` - common description for Ghost Union.
- `local overload` - common description for Mana Overload.
- `local timed` - common beginning of all timed spells (first ultimate). Please leave the space at the end, as this will be merged with the rest of the description.
- `local rig` - common beginning of all rig spells (second ultimate).  Please leave the space at the end, as this will be merged with the rest of the description.
- `local event` - common beginning of the majority of event spells (third and fourth ultimate). Please leave the space at the end, as this will be merged with the rest of the description.
- `local fill` - common beginning of some events (Patron fill, Gremlin fill, and Thief fill). Please leave the space at the end, as this will be merged with the rest of the description.
- `local mode` - common description of the drone mode spell. First %s will be replaced with the alignment name, second with the Rig name and third with the specific spell for this mode.
- `local timedExtra` - common ending of the timed spells (first ultimate). Please leave the space at the beginning. First %s will be replaced with relevant rank, second with relevant alignment and third, again, with relevant rank.
- `module.spells.descriptions` - Spell descriptions appearing in the sanctuaries. Please be aware of the outdated and misleading keys in this section. Follow the English file as an example on how to use common spell descriptions.
18. `module.gui.ranks` - Rank descriptions.
- `local CommonPerksInsertAlignment` - Common descriptions for first and second rank. %s will be replaced with Alignment Name.
- `local CommonPerksInsertTimedSpell` - Common descriptions for third and seventh rank. %s will be replaced with the timed spell name that you have translated in `module.spells.names`. %% will be replaced with a single %.
- `module.gui.ranks` - %d will be replaced with a number. %s usually means class name.
19. `module.gui.reshuffle` - The reshuffle window for Keeper and Spectre 2 token events.
20. `module.gui.multitokens` - Token selection window.
21. `module.gui.feedback` - Private feedback that is being sent to the Discord server.
22. `module.gui.settings` - Settings window.
23. `module.gui.gameover` - Game over screen:
- `module.gui.gameover.results` - Results descriptions (white text)
- `module.gui.gameover.messages` - Silly endgame messages. You may add your own. You may remove some. (Count does not need to be 10). You may just write your own without translating.
- `module.gui.gameover.maxrank` - This text will appear when a player acquires the top rank (50 climbs).
- `module.gui.gameover.credits` - This is currently outdated - PLEASE DO NOT TRANSLATE - I will update the script so that only translatable sections will be here. The rest will be filled automatically. I will also add new translators to the credits.
24. `module.gui.static` - The in-game lobby, sanctuaries and Muggle Home "spell" screen translations. It also includes a normally hidden VR welcome screen.
25. `module.tutorial` - Tutorial translations.
26. `module.where` - Text appearing on spell screens, describing where a spell is normally used.
27. `module.guide` - More specific text describing spell execution, appearing on spell screens. This is also used to generate guide arrows, so it will match with your translation.
28. `module.spells.manacosts` - Mana costs appearing together with spell name on mouse hover. Some are unused.
29. `module.spells.tokencosts` - Token costs.
30. `module.serverfeedback` - Red messages appearing on the bottom of the screen. Some may be unused.
31. `module.serverbroadcast` - Extra server-wide chat messages. This may be scrapped or reworked in 4.1. %s is replaced with player`s name. %d is a number. Keep the %s order (%s pranked %s), so that pranker is not swapped with victim.
32. `module.localfeedback` - Some extra red messages.
33. `module.switchon` and module.switchoff` - Extra red messages appearing after toggling the "Z" button.
34. local timedSpell = "%s just cast the %s spell!" - Timed spell chat message. First %s will be replaced with the player name, second with the spell name from `module.spells.names`.
35. `module.eventspells` - Event spells chat messages - those may be scrapped in 4.1.
36. `module.spells.extras` - Extra texts for spell screens. %s will be replaced with the relevant description.
37. `module.gui.basic.jumpdelay` and `module.gui.basic.dancetime` - Texts appearing on mana bar during jump cooldown and joker disco stairs.
38. `module.gui.mana` - extra texts appearing on second bonus mana bar.
39. `module.gui.hints` - Extra texts appearing on the mouse hover.
40. `module.gui.gameover.extras` - Extra texts for the endgame screen.
41. `module.gui.gameover.raceplacements` - Extra texts appearing on the endgame screen after a race.

Please ignore everything under --PREPARATION--














