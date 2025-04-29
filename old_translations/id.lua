

local module = {}

module.gui = {}

module.gui.basic = {
	["yes"] = "YA",
	["no"] = "TIDAK",
	["ok"] = "OK",
	["menu"] = "MENU",
	["default"] = "NORMAL",
	["validate"] = "SAHKAN",
	["play"] = "MAIN",
	["skip"] = "LEWATI\nLATIHAN",
	["loading"] = "MEMUAT, MOHON MENUNGGU...",
	["mode"] = "%s\nMODE",
	["cd"] = "PENDINGINAN\nPOKOK",
}

module.gui.switcher = {

	["title"] = "GANTI SERVER",

	["public"] = "SERVER UMUM",
	["private"] = "SERVER PRIBADI",
	["join"] = "MASUK",
	["friends"] = "TEMAN ONLINE",
	["refresh"] = "memperbarui...",
	["fail"] = "GAGAL MEMPERBARUI!",

}

module.gui.serversettings = {

	["title"] = "PENGATURAN OWNER",

	["Moderation"] = "MODERASI",
	["rules"] = "Server punyamu, ya kamu yang buat peraturannya.",
	["temp"] = "Semua mute dan ban hanya bersifat sementara",
	["kick"] = "KICK",
	["ban"] = "BAN",
	["mute"] = "MUTE",

	["Drones"] = "PENGATURAN DRONE",
	["DronesReadOnly"] = "PENGATURAN DRONE (baca aja)",
	["DroneEnabled"] = "Drone diaktifkan",
	["DroneFix"] = "Drone memulih tangga",
	["DroneRemove"] = "Drone menghapus simpang terkutuk",
	["DroneUnCurse"] = "Drone memulih tangga terkutuk",
	["DroneMove"] = "Drone memindahkan tangga dalam mode normal",
	["DroneSpin"] = "Drone memutar tangga dalam mode normal",
	["DroneSpeed"] = "Kecepatan drone (level/detik)",
	["DroneDelay"] = "Durasi putaran drone (detik)",
	["DroneMax"] = "Jumlah tangga maksimal (drone akan hancur secara eksklusif di atas batas ini)",
	["DroneMin"] = "Jumlah tangga minimum (drone akan dibuat secara eksklusif di bawah batas ini)",
	["DroneBlock"] = "Kemungkinan simpang terkutuk untuk setiap adanya simpang kosong (persen)",
	["DroneCurse"] = "Kemungkinan simpang terkutuk untuk adanya tangga pembuat dan normal (persen)",

	["Tower"] = "PENGATURAN MENARA",
	["TowerReadOnly"] = "PENGATURAN MENARA (baca aja)",
	["InfMode"] = "Mode Tidak Terbatas (tidak bisa diganti saat membalap atau memulih)",
	["CasualPlayers"] = "Pemain kasual dapat melakukan mantra",
	["Regeneration"] = "Pembuatan tangga otomatis setelah pembersihan dari seorang Wicked (tidak dapat bekerja dalam mode tidak terbatas)",
	["EvenLevels"] = "Level merata dibataskan",
	["OrbMoves"] = "Orb endgame mengganti posisi",
	["InfRegeneration"] = "Pembuatan tangga otomatis dalam server baru, level menara diganti dan setelah balap tidak terbatas",
	["TowerLevels"] = "Level menara (atau level aktif dalam mode tidak terbatas). Tidak dapat diganti saat membalap atau memulih",
	["RaceDuration"] = "Durasi balap maksimal. Tidak akan mempengaruhi balap yang sedang berjalan. (detik)",
	["InfStart"] = "Interval pertama ronde mode tidak terbatas (2 level akan dibuat setiap ronde) (detik)",
	["InfReduction"] = "Pengurangan interval mode tidak terbatas (setiap ronde akan dikurangi dengan) (detik)",
	["InfMin"] = "Durasi minimum interval mode tidak terbatas (detik)",
	["Cooldown"] = "Jangka pendinginan event and rig (detik)",


}

module.gui.shop = {

	["title"] = "TOKO TANGGA GILA",

	["chameleon"] = "Chameleon bisa mengganti kelas saat mendaki.",
	["spectre"] = "Spectre adalah sebuah kelas berbasis teleportasi, terbaik buat solo play.",
	["mana"] = "Luaskan kapasitas manamu dengan 10 poin.",

	["3tokens"] = "Buka sebuah mantra atau lakukan hingga 3 mantra pokok.",
	["30tokens"] = "Buka 10 mantra atau lakukan hingga 30 mantra pokok.",
	["300tokens"] = "Cukup untuk membuka semua mantra dengan sisa 153 token.",

	--below messages apper on mouse hover
	["3TOKENS"] = "3 Multi Token (R$%d)",
	["30TOKENS"] = "30 Multi Token (R$%d)",
	["300TOKENS"] = "300 Multi Token (R$%d)",
	["SPECTRE PASS"] = "Gamepass spectre. (R$%d)",
	["MANA PASS"] = "Gamepass 20 mana. (R$%d)",
	["CHAMELEON PASS"] = "Gamepass chameleon. (R$%d)",

}

module.gui.spellbar = {

	["share"] = "BAGI\nMANA",
	["nocasual"] = "HANYA PEMBALAP YANG BISA MELAKUKAN MANTRA",

} 

module.gui.stats = {

	["total"] = "Jumlah pendakian: %d / Kemenangan: %d",
	["class"] = "Mendaki sebagai %s: %d",
	["best"] = "Waktu %s terbaik: %.2f",
	["na"] = "N/A",

}

module.gui.timedspell = {

	["possessed"] = "TERKUTUK! (cari mana untuk kabur)",
	["released"] = "BEBAS",
	["timesup"] = "waktu habis...",

}


module.gui.activatecham = {

	["title"] = "AKTIFKAN CHAMELEON",
	["body"] = "Apakah kamu mau aktifkan mode chameleon?\nIni akan tetap aktif selama sisa pendakian."

}

module.gui.caceltimed = {

	["title"] = "BATALKAN MANTRA TERBATAS",
	["body"] = "Apakah kamu mau batalkan mantra terbatas ini? Token tidak akan dikembalikan."

}

module.gui.climbtimer = {

	["prompt"] = "Naiklah\ntangganya!",
	["floor"] = "Lantai",
	["last"] = "Terakhir kali",

}

module.gui.codes = {

	["title"] = "MASUKKAN KODENYA",
	["body"] = "Masukkan kodemu di sini:",
	["prompt"] = "(code)",
	["button"] = "TEBUS",

}

module.gui.gauges = {

	["prompt"] = "Lompat untuk lanjut, tekan lagi untuk batal.",

	["found"] = "%d tangga ditemukan (%.1f%% terisi)",
	["special"] = "%d adalah spesial (%.1f%%)",
	["affected"] = "%d tangga akan dipengaruhi (%.1f%%)",
	["cursed"] = "%d simpang terkutuk ditemukan (%.1f%%)",
	["fill"] = "%d tangga akan dibuat (%.1f%%)",
	["purge"] = "%d objek akan dihancurkan (%.1f%%)",
	["normal"] = "%d sudah kembali normal (%.1f%%)",
	["restore"] = "%d tangga akan dipulihkan (%.1f%%)",
	["bypass1"] = "%d kutukan lagi menghalangi (%.1f%%)",
	["bypass2"] = "%d bypass sudah ada (%.1f%%)",
	["bypass3"] = "%d bypass akan dibuat (%.1f%%)",

}

module.gui.jukebox = {

	["title"] = "JUKEBOX",

	["master"] = "VOLUME UTAMA",
	["default"] = "(menggunakan volume utama)",
	["climb"] = "MUSIK MENDAKI",
	["endgame"] = "MUSIK ENDGAME",
	["failed"] = "[gagal memuat]",

}

module.gui.results = {

	["title"] = "HASIL BALAP",

	["place"] = "PERINGKAT",
	["name"] = "NAMA",
	["level"] = "LEVEL MAKSIMAL",
	["time"] = "WAKTU",
	["rank"] = "PANGKAT",
	["not"] = "N/A",
	[1] = "PEMENANG",
	[2] = "ke-2",
	[3] = "ke-3",
	[4] = "ke-4",
	[5] = "ke-5",
	[6] = "ke-6",
	[7] = "ke-7",
	[8] = "ke-8",
	[9] = "ke-9",
	[10] = "ke-10",
	[11] = "ke-11",
	[12] = "ke-12",

}

module.gui.racetimer = {

	["gather"] = "Kamu tidak\nmengikuti balap ini.",
	["race"] = "BALAP\nSELESAI!",
	["inf"] = "Disingkirkan!",
	["off"] = "TIMER\nBALAP.",
	["wait"] = "Mulai dalam",
	["on"] = "Peringkat",

}

module.gui.ranks = {

	["title"] = "PERINGKAT",

	--none
	["none_1"] = "Kamu belum memilih sebuah kelas!",
	["none_2"] = "Kamu tidak punya akses buat mantra apapun!",
	["none_3"] = "Lompat pada morph (di tengah map) - untuk mengganti kelas.",

	--shared
	["higher"] = "PERINGKAT LEBIH TINGGI DIPEROLEH",
	["current"] = "PERINGKATMU SAAT INI",
	["lower"] = "PERINGKAT BELUM DIPEROLEH",

	["more"] = "Kamu harus mendaki sebanyak %d kali sebagai %s untuk memperoleh peringkat ini.",
	["done"] = "Kamu telah memperoleh peringkat yang lebih tinggi. Semua efek peringkat lebih rendah ditambahkan ke dalam peringkat saat ini.",
	["max"] = "Kamu telah memperoleh peringkat maksimal. Kamu telah mendaki sebanyak %d kali sebagai %s.",



	["PATRON"] = {
		"Ini adalah peringkat PATRON pemula kamu.",
		"Kamu akan mendapatkan bonus mana ketika drone berada dalam mode PATRON.",
		"Jika seseorang yang melakukan mantra PEMBUAT, mana kamu akan diisi ulang.",
		"Penyambungmu akan berlangsung 2 kali lebih lama (120s).",
		"Portalmu akan berlangsung 2 kali lebih lama (120s).",
		"Biaya mantra memanggil orb dikurangi menjadi 2 mana.",
		"Mantra PEMBUAT kamu akan berlangsung 50% lebih lama (90s).",
		"Jika kamu kehabisan mana, lompat pada sebuah platform untuk mendapatkan 1 mana.",
		"Orb yang dipanggil akan bergerak 2 kali lebih cepat.",
	}, 
	["JOKER"] = { 
		"Ini adalah peringkat JOKER pemula kamu.",
		"Kamu akan mendapatkan bonus mana ketika drone berada dalam mode JOKER.",
		"Jika seseorang melakukan mantra PEMBALIK, mana kamu akan diisi ulang.",
		"Tangga berdisko tidak akan mempengaruhimu.",
		"Kamu bisa melihat semua tangga tidak terlihat. Kamu punya pilihan untuk tidak menunjukkannya.",
		"Kamu bisa mendeteksi jebakan platform dan tangga tipuan.",
		"Mantra PEMBALIK kamu akan berlangsung 50% lebih lama (90s).",
		"Kamu bisa berjalan pada tangga tipuan.", 
		"Kamu akan mendapatkan bonus mana ketika seseorang menemukan prank apapun. (hanya sekali per prank per pemain)",
	},
	["WICKED"] = {
		"Ini adalah peringkat WICKED pemula kamu.",
		"Kamu akan mendapatkan bonus mana, saat drone berada dalam mode WICKED.",
		"Jika seseorang melakukan mantra PEMBENGKOK, mana kamu akan diisi ulang.",
		"Kamu bisa berjalan pada obby, seperti pada tangga yang normal.",
		"Mantra HANCURKAN BAWAHMU sekarang menjadi gratis.",
		"Kamu akan mendapatkan bonus mana untuk menghancurkan tangga spesial apapun.",
		"Mantra PEMBENGKOK kamu akan berlangsung 50% lebih lama (90s).",
		"Kamu punya pilihan untuk menghindar memicu di bawah Wicked Rig.",
		"Kamu bisa menghancur tangga terkutuk.",
	},
	["SPECTRE"] = { 
		"Ini adalah peringkat SPECTRE pemula kamu.",
		"Kamu akan mendapatkan bonus mana saat drone berada dalam mode SPECTRE.",
		"Jika seseorang melakukan mantra PENJELAJAH, mana kamu akan diisi ulang.",
		"Kamu akan mendapatkan 1 mana tambahan ketika kamu mengumpulkan kristal dengan hantumu.", 
		"Mantra MATERIALISASI sekarang menjadi gratis.",
		"Kamu bisa selesai mendaki dengan meraih orb endgame dengan hantumu.",
		"Mantra PENJELAJAH kamu akan berlangsung 50% lebih lama (90s).",
		"Kamu punya pilihan untuk menghindar memicu di bawah Spectre Rig.", 
		"Kamu bisa berjalan pada tangga berhantu.",
	},
	["CHAMELEON"] = { 
		"Ini adalah peringkat CHAMELEON pemula kamu. Bonus peringkat kelas masih berlaku.",
		"PENGECUALIAN! Kamu akan HANYA mendapatkan bonus Mana ketika drone berada dalam mode CHAMELEON.",
		"Mengganti kelas telah menjadi lebih cepat.",
		"Tanganmu akan bersinar warna ungu, menyamarkan motifmu.",
		"Mantra TANGGA TIPUAN dan BUAT TANGGA akan memiliki sebuah efek berwarna ungu.",
		"Kamu bisa melakukan mantra tertolak PINDAH TANGGA KE BAWAH, SULAP TANGGA, dan TANGGA MENYILANG.",
		"Kamu bisa melakukan mantra tertolak TANGGA FLEKSIBEL dan SULAP TANGGA DI ATAS.",
		"Mengganti kelas sekarang menjadi sangat mulus.",
		"Kamu bisa melakukan mantra CHAMELEON RIG. (multi token dibutuhkan)",
	},
	["MUGGLE"] = { 
		"Ini adalah peringkat MUGGLE pemula kamu.",
		"Pendinginan lompat kamu dikurangi selama 0.125s.",
		"Pendinginan lompat kamu dikurangi selama 0.25s.",
		"Pendinginan lompat kamu dikurangi selama 0.375s.",
		"Pendinginan lompat kamu dikurangi selama 0.5s.",
		"Kecepatanmu ditambahkan sebanyak 10%.",
		"Kecepatanmu ditambahkan sebanyak 20%.",
		"Kecepatanmu ditambahkan sebanyak 30%.",
		"Kekuatan lompat kamu ditambahkan sebanyak 20%.",
	},
	["KEEPER"] = {
		"Ini adalah peringkat KEEPER pemula kamu.",
		"Kamu akan mendapatkan bonus mana ketika drone berada dalam mode KEEPER.",
		"Jika seseorang melakukan mantra KENAIKAN, mana kamu akan diisi ulang.",
		"Mantra GERAK SECARA ACAK dan Keeper Rig yang kamu picukan tidak akan membuat tangga untuk turun.",
		"Kamu bisa memindahkan tangga yang diputar.",
		"Mantra pemulih kamu sekarang menjadi gratis.", 
		"Mantra KENAIKAN kamu akan berlangsung 50% lebih lama (90s).",
		"Kamu punya pilihan untuk menghindar memicu di bawah Keeper Rig.",
		"Kamu bisa memulihkan tangga dan simpang yang terkutuk.",
	},
	["HACKER"] = { 
		"Ini adalah peringkat HACKER pemula kamu.",
		"Kamu akan mendapatkan bonus mana ketika drone berada dalam mode HACKER.",
		"Jika seseorang melakukan mantra USAIN BOLT, mana kamu akan diisi ulang.",
		"Eskalator menurun tidak akan berjalan ketika kamu berada pada eskalator tersebut.",
		"Mantra LARI horizontal kamu telah menjadi 50% lebih cepat.",
		"Mantra SULAP melalui tangga di atas kamu telah menjadi 50% lebih cepat.",
		"Jika kamu kehabisan mana, lompat pada sebuah platform untuk mendapatkan 1 mana secara ajaib.", 
		"Kamu punya pilihan untuk menghindar memicu di bawah Hacker Rig.",
		"Jika ada paling sedikit satu simpang normal, melakukan glitch pada level tertinggi akan mewujud ulang tangga yang berada di dekat orb.", 
	},
	["THIEF"] = {
		"Ini adalah peringkat THIEF pemula kamu.",
		"Kamu akan mendapatkan bonus mana ketika drone berada dalam mode THIEF.",
		"Jika seseorang melakukan mantra BUFFET TANGGA, mana kamu akan diisi ulang.",
		"JALAN PINTAS kamu akan berlangsung 2 kali lebih lama (120s).",
		"PUTING BELIUNG kamu akan berlangsung 2 kali lebih lama (120s).",
		"Kamu bisa mencuri tangga apapun, kecuali yang dikutuk.",
		"Mantra BUFFET TANGGA kamu akan berlangsung 50% lebih lama (90s).",
		"Jika kamu kehabisan, lompat pada sebuah platform untuk mendapatkan 1 mana dari penyimpanan kamu.", 
		"Kamu bisa menyimpan 2 tangga yang dicuri secara bersamaan.",
	},
	["ARCHON"] = {
		"Ini adalah peringkat ARCHON pemula kamu.",
		"Kamu akan mendapatkan bonus mana ketika drone berada dalam mode ARCHON.",
		"Jika seseorang melakukan mantra BUFFET PORTAL, mana kamu akan diisi ulang.",
		"Kamu bisa melakukan mantra HANCURKAN PORTAL pada platform manapun.",
		"Mantra HANCURKAN PORTAL kamu sekarang menjadi gratis.",
		"Portal tidak akan teleport kamu ke bawah.",
		"Mantra BUFFET PORTAL kamu akan berlangsung 50% lebih lama (90s).",
		"Kamu bisa melakukan mantra belah pada tangga yang sudah dibelah.",
		"Kamu punya pilihan untuk menghindari teleportasi pada semua portal, kecuali portal ke atas.",
	},
	["DRIFTER"] = {
		"Ini adalah peringkat DRIFTER pemula kamu.",
		"Kamu akan mendapatkan bonus mana ketika drone berada dalam mode DRIFTER.",
		"Jika seseorang melakukan mantra PEMBANGKIT, mana kamu akan diisi ulang.",
		"Penyimpangan platform vertikal kamu akan muncul dan bergerak 50% lebih cepat.",
		"Kamu bisa memutar tangga yang diselancar.",
		"Kamu bisa mendorong mantra ANGKAT KE ATAS dengan mantra PEMBANGKIT dan LIFT KE ATAS.",
		"Mantra PEMBANGKIT kamu akan berlangsung 50% lebih lama (90s).",
		"Kamu punya pilihan untuk menghindar memicu di bawah Drifter Rig.",
		"Kamu bisa mendorong mantra ANGKAT KE ATAS 2 kali lipat dengan mantra PEMBANGKIT dan LIFT KE ATAS.",
	},
	["HERETIC"] = {
		"Ini adalah peringkat HERETIC pemula kamu.",
		"Kamu akan mendapatkan bonus mana ketika drone berada dalam mode HERETIC.",
		"Jika seseorang melakukan mantra KUTUKAN, mana kamu akan diisi ulang.",
		"Jika kamu kehabisan mana, kamu bisa menyentuh tangga yang terkutuk untuk memulih tangga tersebut dan mendapatkan 1 mana.",
		"Kamu telah menjadi kebal terhadap Heretic Rig.",
		"Kamu bisa melakukan mantra PENGEDIP untuk memulihkan sebuah simpang.",
		"Mantra KUTUKAN kamu akan berlangsung 50% lebih lama (90s).",
		"Mantra BUAT TANGGA TERKUTUK dan KUTUKAN bisa menghancurkan tangga pelintas yang terkutuk.",
		"Kamu akan dapat bonus mana setiap kali seseorang menjadi kerasukan.",
	},


}

module.gui.reshuffle = {

	["title"] = "MODE ROMBAK ULANG",

	["body"] = "Apakah kamu mau semua tangga untuk menghindari tabrakan saat bergerak? Jika tidak, semua tangga yang menghalangi akan dihancurkan.",

}

module.gui.multitokens = {

	["title"] = "CHOOSE YOUR TOKENS",

	["info"] = "Kamu butuh 3 token untuk membuka sebuah mantra.",
	["notokens"] = "Kamu tidak punya multi token tersisa",
	["nopass"] = "TIDAK ADA GAME PASS",

}

module.gui.feedback = {

	["title"] = "KIRIM TANGGAPAN",

	["prompt"] = "Tekan di sini untuk mengirim pesan ke developer! (minimal 20 karater)",
	["send"] = "KIRIM",
	["locked"] = "DIKUNCI",

}

module.gui.settings = {

	["title"] = "PENGATURAN GAME",

	["ANIM1"] = "PENGATURAN\nANIMASI",	
	["ANIM2"] = "PENGATURAN ANIMASI\nEKSTRA",
	["MISC"] = "PENGATURAN\nLAINNYA",
	["INTERFACE"] = "INTERFACE\nSETTINGS",	

	["size"] = "Tunjukkan animasi ukuran",
	["color"] = "Tunjukkan animasi warna",
	["escalator"] = "Tunjukkan animasi eskalator",
	["sanctuary"] = "Tunjukkan animasi suaka",
	["list"] = "Tunjukkan daftar pemain yang dianimasi",
	["ghosts"] = "Aktifkan animasi hantu",
	["distance"] = "Tingkatkan jarak animasi maksimal",
	["morph"] = "Tunjukkan animasi morph ketika menggunakan Deceiver atau Usurper",
	["billboard"] = "Tunjukkan papan avatar diri sendiri",
	["rank"] = "Tunjukkan peringkatmu dalam papan avatar",
	["switchback"] = "Otomatis ganti ke mantra normal setelah melakukan mantra pokok",
	["safecancel"] = "Tunjukkan window konfirmasi ketika membatalkan sebuah mantra pokok terbatas",
	["multi"] = "Tunjukkan pemilihan window multi token setelah mendaki",
	["kchoices"] = "Tunjukkan window memilih arah untuk Keeper (tidak bekerja pada Xbox)",
	["achoices"] = "Tunjukkan window memilih arak untuk Archon (tidak bekerja pada Xbox)",
	["stats"] = "Tunjukkan statistik ekstra ketika melakukan mantra rig dan event",


}

module.gui.gameover = {}

module.gui.gameover.results = {

	["class"] = "KELASMU",
	["time"] = "WAKTUMU",
	["climbs"] = "PENDAKIAN DIDAPATKAN",
	["tokens"] = "TOKEN DIDAPATKAN",
	["rank"] = "PERINGKATMU SAAT INI",

}

module.gui.gameover.messages = {

	["PATRON"] = {
		"BANTU, LINDUNG, dan BUAT",
		"Anak-anak baru itu butuh bantuan kita",
		"Bakal tidak ada harapan tanpa adanya patron",
		"11/10 buat kebaikannya",
		"Berbagi itu peduli",
		"Tidak ada yang namanya terlalu banyak tangga",
		"Tidak ada tam dalam tim, tapi pasti ada seorang patron",
		"Kamu tidak bisa punya tangga tanpa tangga",
		"Selesai dengan baik, seperti biasa",
	},
	["JOKER"] = {
		"TIPU, BINGUNGKAN, dan KETAWA",
		"Ini tangga bercanda kayaknya",
		"Kok serius banget?",
		"HA! HA! HA!",
		"Santai dan lihat mereka jatuh",
		"Bro, kamu marah ya?",
		"You know the rules and so do I (do I~)",
		"Tanpa aku, ini bakal membosankan",
		"Tangga tipuan itu beneran ada",
	},
	["WICKED"] = {
		"CEGAH, BLOKIR, dan HANCUR",
		"Aku ga jahat, cuma ada terlalu banyak tangga",
		"Tangga-tangga itu harus pergi",
		"Ga peduli maunya apa, yang penting ada kekacauan",
		"Tangga ini kelihatannya bagus kalau ga ada tangga",
		"Aku akan hancurkan pikiran, jiwa, and badanmu (dan juga tangga)",
		"1)Buat sebuah obby 2)Lihat pemula kesusahan 3)Selamat menikmati",
		"Semuanya akan mati dalam akhirat",
		"Bersihkan pikiranmu - tapi pertama-tama bersihkan tangga itu",
	},
	["SPECTRE"] = {
		"MENGHILANG, SEMBUNYI, dan TELEPORT",
		"Teleport itu aman dong",
		"Kamu tak bakal bisa menangkap aku",
		"Kecantikan dari tangga berhantu itu tidak tertandingi",
		"Orang jatuh? Terus kenapa?",
		"Kamu bisa menyelesaikan semua masalahmu dengan teleport",
		"Saat kamu mulai teleport, kamu tak akan berhenti",
		"Yang penting aku enggak teleport tangga",
		"Pertahankan, kamu pemula!",
	},
	["MUGGLE"] = {
		"JALAN, LOMPAT, dan JATUH",
		"Kami belum punya mantra kayak gitu waktu gamenya masih dalam alpha",
		"Sumpah, drone-dronenya pada ga adil semua",
		"Pasti selalu ada jalannya",
		"Lompat tangga merupakan sebuah bakat",
		"Rahasiaku? Berhenti dan pikir",
		"Aku ga percaya sama yang namanya sulap",
		"Kadang kamu harus tunggu untuk sebuah drone - Kayak di dunia nyata",
		"Orang-orang pada pake mantra? Dasar pemula!",
	},
	["CHAMELEON"] = {
		"SALIN, TIRU, dan KEJUT",
		"Aku terlalu malas untuk membuat mantra yang baru",
		"Lebih banyak variasi - lebih seru",
		"Kerja sama itu lemot - Berubah itu cepat",
		"Kemampuan untuk mengatur adalah sebuah asas untuk bertahan hidup",
		"AKU emang tegas, cuma aku suka berubah pikiran",
		"Kamu menguasai satu kelas? Aku mah menguasai semuanya",
		"Satu kelas aja? Bosenin!",
		"Aku suka kekacauan",
	},
	["KEEPER"] = {
		"GERAK, PUTAR, dan ATUR",
		"Berhenti mengacaukan tanggaku!",
		"Keberhasilan yang perkasa untuk semua Keeper, seperti biasa",
		"Misi selesai!",
		"Aku tuh orangnya diktator",
		"Kekacauan diatasi",
		"Akulah cuma satu-satunya kelas yang sejati",
		"Suatu hari aku akan bereskan menara ini",
		"Tangga telah diperbaiki - tangga menjadi senang",
	},
	["THIEF"] = {
		"PINJAM, GUNA, dan KEMBALIKAN",
		"Itu sebenarnya meminjam",
		"Bumi datar itu indah sekali",
		"Yang penting aku enggak curi platform",
		"Cuma jangan jalan pada thief rig, geleng kepala",
		"Kamu ada lihat aku curi sesuatu enggak?",
		"Aku tuh kayak Robin Hood - Curi dari yang kaya dan kasih ke diri sendiri",
		"Tak ada yang bakal tahu ada satu tangga hilang",
		"Redistribusi tangga mencegah anarkisme",
	},
	["HACKER"] = {
		"RETAS, GLITCH, dan RUSAKKAN",
		"Permainan adil? Tidak ada hal seperti itu",
		"Tunggu! Tangga ini hanya fiktif belaka... Sebenarnya kita hidup dalam sebuah simulasi Roblox apa enggak sih?",
		"01010100 01000001 01001110 01000111 01000111 01000001 00100000 01000111 01001001 01001100 01000001",
		"Pernahkan kamu lihat peraturan tertulis dimanapun di sini?",
		"Aku ngecheat? Semua orang di sini ngecheat",
		"Maksudku beberapa perubahan di sini dan di sana - Hampir bukan retasan itu",
		"Kecepatan itu segalanya",
		"Eskalator untuk seumur hidup",
	},
	["HERETIC"] = {
		"KAMU TAK DAPAT LEWAT",
		"Melarang ilmu gelap itu seperti melarang keseruan",
		"Rasuki orang. Pertahankan dalam melayani Overmind.",
		"Kematian dan membusuk",
		"Ritual gelap selesai",
		"Kita tidak harus membatasi kita We should not restrict ourselves",
		"Mampus kerasukan",
		"Pilihlah sisi yang gelap - Ini lebih gampang dari Illuminasi",
		"Kenapa aku harus peduli ketika orang lagi tersesat?",
	},
	["ARCHON"] = {
		"BUKA PORTAL, ???, UNTUNG",
		"Tangga ini punya kakek aku",
		"Siapkan payung sebelum ujian untuk berhasil",
		"Belajar giat dan kamu akan berhasil",
		"Kemampuan untuk membelah tangga adalah sebuah bentuk seni",
		"Keluarkan dirimu secara bertahap",
		"Kuenya itu hoaks",
		"Bakal selalu ada perbedaan untuk setiap masalah",
		"Semua orang jadi pusing!",
	},
	["DRIFTER"] = {
		"LAYANG, KENDARA, dan LUNCUR",
		"Omong-omong, siapa yang butuh tangga ya? Kita kan lagi di angkasa!",
		"Terbang, dasar bodoh!",
		"Luncurlah ke angin surya",
		"Enggak ada yang namanya jatuh di angkasa - Lompat tanpa khawatir",
		"Selancar semuanya - Lompat ke kemenangan",
		"Jangan berhenti - Tetap selancar",
		"Aku suka mengendarai platform",
		"Tetap selancar",
	},

}

--this messages will appear when player gets the max rank
module.gui.gameover.maxrank ={

	["SAVIOUR"] = "Jangan biarkan anak baru ketinggalan",
	["IT"] = "Ga prank ga hidup",
	["ANNIHILATOR"] = "Robohkan semua!",
	["AETHER"] = "Masuk ke alam gaib",
	["DABSFORLIF"] = "Mantra sekarang udah ga zaman",
	["USURPER"] = "Ya aku emang suka semua mantra",
	["ADMIRAL"] = "Perintah dipulihkan",
	["OUTLAW"] = "Punyaku, punyaku, SEMUA PUNYAKU!",
	["ZERO"] = "Rootkit telah terpasang",
	["EXILED"] = "Pengucilan",
	["ILLUMINATI"] = "Illuminati, fix",
	["STRIDER"] = "Aku naik lift aja deh",

}

--credits - feel free to add yourself as a translator
module.gui.gameover.credits = {

	"TANGGA GILA",
	"Game dikonsep, didesain, dan skripsinya ditulis oleh Sleazel",
	"Bantuan desain oleh cakegirlserina",
	"Model dibuat oleh ZielonyLeszek",
	"Skybox disediakan oleh geenratornya @wwwtyro",
	"Modul penyimpanan data dan DataStore2 oleh Kampfkarren",
	"Skripsi papan peringkat ori oleh ThatTimothy",
	"Penerjemahan disediakan oleh echocentrical",
	"KELINCI PERCOBAAN:",
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
	"TERJEMAHAN:",
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
	"Bosanski - xootynator",	"TERIMA KASIH, KHUSUSNYA UNTUK:",
	"kolcer",
	"ThatTimothy",
	"SerpentineKing",
	"WhereDidTheSunGo",
	"b3ntheplay3r2",
	"TehEpix2",
	"Narvog1",
	"shark66655",
	"MUSIK (katalog APM):",
	"Musik intro - Allure oleh Martin Albert Sponticcia",
	"\"None\" Musik endgame - Deceived oleh Martin Albert Sponticcia",
	"Musik muggle - Hyperdrive oleh Gary Leslie Scargill, Peter Nicholas Oldroyd",	
	"Musik endgame muggle - Reflections oleh Milan Pilar",
	"Musik patron - Tranquilize oleh Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Musik endgame patron - Dreamers oleh Joseph Alexander",
	"Musik joker - Crosswind oleh Martin Albert Sponticcia",
	"Musik endgame joker - Fender Stab oleh Steven Raymond Bush",
	"Musik wicked - Wicked oleh Daniel Jay Nielsen, Nathan Duvall",
	"Musik endgame wicked - Something Wicked oleh Cris Velasco",
	"Musik spectre - Reflections oleh Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Musik endgame spectre - Cosmic Dust oleh Milan Pilar",
	"Musik keeper - Automotion oleh Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Musik endgame keeper - Synth On The Highway oleh Richard Adrian Maxwell Preston",
	"Musik hacker - Network oleh Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Musik endgame hacker - Descending Into Oblivion oleh Richard Adrian Maxwell Preston",
	"Musik thief - Reaching Out oleh Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Musik endgame thief - Soaring oleh Richard Adrian Maxwell Preston",
	"Musik archon - Aperture oleh Paul Emons, Richard Goodliff, Ian Robson",
	"Musik endgame archon - Rendezvous oleh Paul Emons, Richard Goodliff, Ian Robson",
	"Musik drifter - Communique oleh Gary Leslie Scargill, Peter Nicholas Oldroyd, Richard Francis Adrian Brown",
	"Musik endgame drifter - Fragile oleh Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Musik heretic - Mother oleh Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Musik endgame heretic - Being Me oleh Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Musik chameleon - Rah oleh Gary Leslie Scargill, Peter Nicholas Oldroyd",
	"Chameleon endgame music - Midnight Runner oleh Richard Adrian Maxwell Preston",
	"Musik gabung dengan hantu - Amber Garden oleh Paul Emons, Richard Goodliff, Ian Robso",
	"Musik kerasukan - Dark Souls oleh David Arkenstone",
	"Musik tangga berdiskonya joker - To The Disco oleh Gordon Zola",
	--"Patron's portal music - Angel's Song - Esther Dee",
	--"Patron's/Wicked's link music - Enchanted Trail (no vocals) - Heather McClelland",
	"Musik platform drifter - Radioactivity oleh Gary Leslie Scargill, Peter Nicholas Oldroyd, Patrick Gomersall",
	"Terima kasih telah bermain!",	
}



module.static = {

	--INTRODUCTION SCREENS

	["cla_1"] = "Cara mainnya gimana?",
	["cla_2"] = "Pertama, sangat direkomendasikan untuk menyelesaikan tutorial ini. Jika kamu belum melakukan demikian, mohon rejoin, soalnya game ini bisa menjadi sangat membingungkan sebaliknya.",
	["cla_3"] = "Tujuan dari game ini adalah untuk mencapai puncak dan sampai ke emergi orb yang melayang. Pertama pilih kelas dengan cara melompat pada pad yang berkilau yang berada dalam tengah map.",
	["cla_4"] = "Setelah membuat keputusan, kumpulkan kristal melayang untuk isi ulang mana dan naik tangga. Gumanakan mantra kelasmu untuk membantu kamu dengan pendakiannya.",
	["cla_5"] = "Bagaimana cara melakukan mantra?",
	["cla_6"] = "Setiap mantra punya biaya mana yang diperlukan untuk melakukannya. Ketika kamu punya cukup mana, tekan mantra yang kamu mau lakukan. Tanganmu akan mulai berkilau, menunjukkan sebuah eksekusi yang berhasil.",
	["cla_7"] = "Setelah melakukannya, tentu saja mantranya masih perlu diwujudkan. Semua mantra diwujudkan dengan cara melompat. Tergantung pada mantranya, kamu harus lompat pada sebuah platform atau sebuah tangga. Panah penunjuk akan muncul, untuk membantu kamu dalam mewujudkannya.",
	["cla_8"] = "Saat kamu selesai mendaki, kamu akan menerima 3 spell token yang kamu bisa gunakan untuk membuka satu mantra. Daki lebih banyak untuk membuka lebih banyak mantra. Kamu tidak bisa gunakan token dari sebuah kelas untuk membuka sebuah mantra dari kelas lainnya.",
	["cla_9"] = "Bagaimana cara melakukan mantra pokok?",
	["cla_10"] = "Pertama, kamu harus membuka semua mantra dasar untuk mengakses mantra pokok. Mantra pokok tidak perlu dibuka, tapi mereka menggunakan token daripada mana ketika dilakukan.",
	["cla_11"] = "Selesai mendaki sebanyak yang diperlukan untuk membuka semua mantra dasar. Kamu bisa mencoba untuk memenangkan balap untuk mendapatkan token ekstra. Kamu juga bisa membeli token. Saat dibuka, tekan tombol di ujung kiri atau tekan 'C'",
	["cla_12"] = "Sebagian mantra pokok bersifat terbatas dan tidak perlu diwujudkan. Mohon baca info lebih lanjut dalam Perserikatan Kelas untuk belajar lebih dalam tentang sebuah mantra pokok sebelum dilakukan. Membatalkan sebuah mantra terbatas tidak akan mengembalikan token",

	["pro_1"] = "MENARA PRO",
	["pro_2"] = "Batasan level yang sejajar",
	["pro_3"] = "Dalam menara pro, sebagian mantra platform tidak dapat dilakukan pada level yang sejajar. Jebak, Buat Portal, Teleport Vertikal, Tangga Puting Beliung, dan Teleport secara Acak hanya dapat dilakukan pada level tidak sejajar.",
	["pro_4"] = "Drifter juga tidak dapat selancar pada platform yang berada dalam level sejajar. Platform yang terdampak akan ditandai dengan lingkaran merah di tengah.",
	["pro_5"] = "Tangga Terkutuk",
	["pro_6"] = "Dalam menara pro, drone akan membuat tangga terkutuk secara acak atau mengutuk tangga normal. Tangga terkutuk dapat muncul dengan kemungkinan 20%. Panah penunjuk tidak akan muncul dekat tangga terkutuk.",
	["pro_7"] = "Tangga terkutuk bersifat kebal pada sebagian besar mantra. Kamu tidak bisa teleport melaluinya maupun menggunakan mantra Sulap (kelas Hacker). Apalagi, semua mantra yang bersifat menghancurkan tidak dapat bekerja (seperti mantra pindah dari kelas Keeper).",
	["pro_8"] = "Hanya heretic dan admiral yang dapat memulih tangga terkutuk. Mantra Hancurkan dan Pulih Semua Tangga juga akan menghapus semua tangga terkutuk. Namun, drone akan membuat tangga terkutuk yang baru dalam menara pro.",
	["pro_9"] = "Simpang Terkutuk",
	["pro_10"] = "Dalam menara pro, drone juga akan membuat simpang terkutuk secara acak. Terdapat kemungkinan 20% untuk drone mengutuk sebuah simpang normal. Panah penunjuk akan berubah menjadi tanda silang untuk menandai bahwa simpang tersebut telah dikutuk.",
	["pro_11"] = "Simpang terkutuk mencegah semua mantra platform yang diwujudkan pada panah platform. Kamu tidak dapat membuat tangga, rantai, maupun teleport melalui simpang-simpang tersebut.",
	["pro_12"] = "Hanya heretic, admiral, dan drone yang dapat memulih simpang terkutuk. Sama seperti tangga terkutuk, mantra Hancurkan Semua Tangga (dari kelas Wicked) akan menghapus semua kutukan, tapi simpang terkutuk yang baru akan muncul saat regenerasi.",

	["inf_1"] = "MENARA TIDAK TERBATAS",
	["inf_2"] = "MANDAT UNTUK BALAP",
	["inf_3"] = "Dalam menara tidak terbatas, balap merupakan sebuah mandat. Pemain kasual tidak dapat melakukan mantra dan tidak akan mendapatkan apapun setelah mendaki. Mengumpulkan orb endgame hanya memberi 10 mana.",
	["inf_4"] = "Untuk 'menyelesaikan' menara tidak terbatas, kamu harus ikut serta dan coba untuk berada di sana selama mungkin. Kamu akan mendapatkan hadiah (jika ada) pada eliminasi.",
	["inf_5"] = "Fallen Drone",
	["inf_6"] = "Tidak seperti menara klasik dan pro, Fallen Drone punya sebuah tugas khusus dalam menara tidak terbatas.",
	["inf_7"] = "Setiap kali interval naik, Fallen Drone akan membuat 2 level baru. Setiap level akan memiliki batasan. Selain itu, sebagian tangga atau simpang juga menjadi terkutuk.",
	["inf_8"] = "Interval pertama berlangsung selama 20 detik. Setiap kenaikan akan mengurangi durasi interval selama setengah detik, sampai level dibuat lebih cepat dari didaki.",
	["inf_9"] = "Penghapus",
	["inf_10"] = "Penghapus merupakan sebuah ruang gaya khusus yang akan naik bersama dengan menara dan menghapus level yang berada di bawah. Gagal untuk bersaing dengan penghapus akan mengeliminasi pemain tersebut dari ronde. Ini mirip dengan 'lantainya menjadi lava' di permainan lainnya.",
	["inf_11"] = "Sama seperti Fallen Drone, penghapus akan menjadi lebih cepat. Namun, perlahan-lahan, daripada menghapus 2 level secara bersamaan.",
	["inf_12"] = "Tangga dan platform yang disentuh oleh penghapus akan menghilang. Coba untuk menghindari penghapus selama mungkin untuk menang.",

	["cus_1"] = "MENARA CUSTOM",
	["cus_2"] = "KAMU YANG TENTUKAN!",
	["cus_3"] = "Dalam menara custom, kamu bisa mengatur menara sesuai keinginanmu.",
	["cus_4"] = "Hadiah dalam menara custom dipotong menjadi setengah. Kamu akan mendapatkan token setiap 13 level dan mendaki setiap 30 level.",
	["cus_5"] = "Pengaturan menara",
	["cus_6"] = "Dengan mengatur menara, kamu bisa membuat menara dengan gayamu sendiri. Pilih level, batasi level sejajar, atau bahkan bikin menara menjadi mode tidak terbatas.",
	["cus_7"] = "Hanya pemilik server yang dapat mengakses pengaturannya. Oleh karena itu, menara custom tidak tersedia pada server umum.",
	["cus_8"] = "Pengaturan drone",
	["cus_9"] = "Kamu bisa mengatur drone dengan cara mengatur jumlah drone maksimal, minimal, atau bahkan menonaktifkan mereka sekaligus.",

	["vr_1"] = "Dengan bermain Tangga Gila dalam mode VR, kamu otomatis akan menjadi seorang architect.",
	["vr_2"] = "Tidak seperti pemain pada umumnya, seorang architect tidak perlu naik tangga. Tujuanmu adalah untuk membantu atau mencegah pemain lain dari mendaki menara.",
	["vr_3"] = "Pilihan berada pada tanganmu. Apakah kamu akan menjadi seorang ancaman atau seorang penyelamat? Atau kamu cuma mau main-main aja? Selamat bersenang-senang!",
	["vr_4"] = "Bagaimana cara navigasi?",
	["vr_6"] = "Gunakan thumbstick kananmu untuk naik atau turun. Menggerakkan thumbsticknya ke kiri atau ke kanan akan berujung pada 'snap' turining of the camera.",
	["vr_7"] = "Coba untuk berada pada luar tangga untuk POV yang lebih baik dan kemudahan dalam menargetkan sesuatu.",
	["vr_8"] = "Bagaimana melakukan mantra?",
	["vr_9"] = "Untuk melakukan sebuah mantra, peras magic orb dengan menggunakan tombol grip. Penunjuk laser akan muncul untuk membantu kamu menargetkan tangga dan platform dalam perwujudan mantra.",
	["vr_10"] = "Wujudkan mantranya dengan tombol trigger ketika masih menahan tombol grip. Setiap kelas dalam VR memiliki 2 mantra, yaitu satu mantra platform dan satu mantra tangga. Tergantung pada targetnya, mantra yang sesuai akan dipilih.",
	["vr_11"] = "Untuk mengganti kelas dalam mode VR, tekan dan tahan tombol trigger tanpa memegang tombol grip. Kamu bisa mengganti kelas dengan menggunakan thumbstick yang sesuai.",

	--ROOMS DOOR TEXTS

	["home_1"] = "RUMAH MUGGLE",
	["home_2"] = "MOTTO KAMI:\nJALAN\nLOMPAT\nDAN\nJATUH",
	["home_3"] = "PRO:\nBonus kecepatan dan kekuatan lompat pada peringkat tinggi\nHak untuk pamer\nKONTRA:\nTidak ada mantra\nBisa nyangkut dengan gampang",
	["home_4"] = "'Kami belum punya mantra kayak gitu waktu gamenya masih dalam alpha!'\nkata pendiri kami",

	["oasis_1"] = "OASIS CHAMELEON",
	["oasis_2"] = "MOTTO KAMI:\nSALIN\nTIRU\nDAN\nKEJUT",
	["oasis_3"] = "PRO:\nBisa ganti kelas kapan saja, dimana saja\nKONTRA:\nMemerlukan robux\nRank up semua kelas bisa memakan waktu yang banyak",
	["oasis_4"] = "'Aku terlalu malas untuk membuat mantra yang baru.'\nkata pendiri kami",

	["nexus_1"] = "PERHUBUNGAN HERETIC",
	["nexus_2"] = "MOTTO KAMI:\nKAMU\nTAK\nDAPAT\nLEWAT",
	["nexus_3"] = "PRO:\nTerbaik dalam menara pro\nTidak dapat dihentikan\nKONTRA:\nKerja sama menjadi sulit\nHaus mana",
	["nexus_4"] = "'Melarang ilmu gelap itu seperti melarang keseruan.'\nkata pendiri kami",

	["guild_1"] = "PERSERIKATAN THIEF",
	["guild_2"] = "MOTTO KAMI:\nPINJAM\nGUNA\nDAN\nKEMBALIKAN",
	["guild_3"] = "PRO:\nEfisien mana\nVersatil\nKONTRA:\nHarus curi tangga\nTidak bisa menghancurkan tangga menyilang",
	["guild_4"] = "'Itu sebenarnya meminjam.'\nkata pendiri kami",

	["nether_1"] = "BAWAH TANAH SPECTRE",
	["nether_2"] = "MOTTO KAMI:\nMENGHILANG\nSEMBUNYI\nDAN\nTELEPORT",
	["nether_3"] = "PRO:\nMantra cepat\nCocok buat main solo\nKONTRA:\nMembutuhkan robux\nTidak cocok ketika bekerja sama",
	["nether_4"] = "'Teleport itu aman dong.'\nkata pendiri kami (TIDAK HADIR)",

	["study_1"] = "TELAAH ARCHON",
	["study_2"] = "MOTTO KAMI:\nBUKA\nPORTAL\n???\nUNTUNG",
	["study_3"] = "PRO:\nRig beemanfaat\nMembuat lawan bingung\nKONTRA:\nPaling sulit untuk dipelajari\nMembutuhkan perencanaan",
	["study_4"] = "'Tangga ini punya kakek aku.'\nkata pendiri kami",

	["haven_1"] = "SURGA PATRON",
	["haven_2"] = "MOTTO KAMI:\nBANTU\nLINDUNG\nDAN\nBUAT",
	["haven_3"] = "PRO:\nPaling mudah untuk dipelajari\nCocok untuk kerja sama\nKONTRA:\nMenggunakan banyak mana\nDapat mengikat orang yang tak mau rugi",
	["haven_4"] = "'Anak-anak baru itu butuh bantuan kita!'\nkata pendiri kami",

	["shelter_1"] = "PERLINDUNGAN DRIFTER",
	["shelter_2"] = "MOTTO KAMI:\nLAYANG\nKENDARA\nDAN\nLUNCUR",
	["shelter_3"] = "PRO:\nVersatil\nCocok untuk kerja sama\nKOMTRA:\nMembutuhkan skill parkour\nTidak cocok untuk menara pro",
	["shelter_4"] = "'Omong-omong, siapa yang butuh tangga ya? Kita kan lagi di angkasa!'\nkata pendiri kami",

	["circus_1"] = "SIRKUS JOKER",
	["circus_2"] = "MOTTO KAMI:\nTIPU\nBINGUNGKAN\nDAN\nKETAWA",
	["circus_3"] = "PRO:\nDibuat untuk ngerjain\nMantra balik dapat menjadi bermanfaat\nKONTRA:\nMantra mahal\nDapat merusak pertemanan",
	["circus_4"] = "'Ini tangga bercanda kayaknya.'\nkata pendiri kami",

	["base_1"] = "PANGKALAN KEEPER",
	["base_2"] = "MOTTO KAMI:\nGERAK\nPUTAR\nDAN\nATUR",
	["base_3"] = "PRO:\nDapat memulihkan tangga\nDpaat menggunakan tangga ulang\nKONTRA:\nMemerlukan skill parkour\nTidak berguna tanpa tangga",
	["base_4"] = "'Berhenti mengacaukan tanggaku!'\nkata pendiri kami",

	["chamber_1"] = "RUANG WICKED",
	["chamber_2"] = "MOTTO KAMI:\nCEGAH\nBLOKIR\nDAN\nHANCUR",
	["chamber_3"] = "PRO:\nDapat menghancurkan tangga\nDapat menghancurkan tangga yang utuh\nKONTRA:\nTerlalu bergantung pada tangga",
	["chamber_4"] = "'Aku ga jahat, cuma ada terlalu banyak tangga.'\nkata pendiri kami",

	["backdoor_1"] = "PINTU BELAKANG HACKER",
	["backdoor_2"] = "MOTTO KAMI:\nRETAS\nGLITCH\nDAN\nRUSAKKAN",
	["backdoor_3"] = "PRO:\nKelas tercepat\nSusah untuk diikuti\nKONTRA:\nTerlalu bergantung pada tangga\nTidak cocok untuk kerja sama",
	["backdoor_4"] = "'Permainan adil? Tidak ada hal seperti itu.'\nkata pendiri kami",

	--LEADERBOARD DESCRIPTIONS

	--SHARED
	["leader_pro"] = "Mendaki menara pro dihitung 2 kali lipat",	
	["leader_update"] = "Pembaruan dalam: ",	
	["leader_updating"] = "Memperbarui...",	
	["leader_rank"] = "PERINGKAT",
	["leader_req"] = "PENDAKIAN DIBUTUHKAN",
	["leader_off"] = "Papan peringkat tidak tersedia dalam menara custom.",

	--OVERALL
	["over_title"] = "SEMUA PERINGKAT",
	["over_desc"] = "Setiap peringkat yang telah didapatkan menambah 1 poin",
	["over_rank"] = "PERINGKAT",
	["over_req"] = "POIN DIBUTUHKAN",
	["emperor_req"] = "* Membutuhkan Chameleon ATAU Spectre",
	["overmind_req"] = "** Membutuhkan Chameleon DAN Spectre",
	["over_prefix"] = "PREFIKS",
	["over_passes"] = "GAME PASS\nDIBUTUHKAN",
	["over_notgroup"] = "WARNA ZAITUN - tidak berada dalam grup",
	["over_group"] = "WARNA BIRU KEHIJAUAN - berada dalam grup",
	["over_mod"] = "MODERATOR - Pemain ini merupakan seorang moderator",
	["over_admin"] = "ADMIN - Pemain ini merupakan seorang admin",
	["over_owner"] = "PRANK ME - Pembuat game (sleazel)",

	--OTHER
	["muggle_lead"] = "MUGGLE TERCEPAT",
	["muggle_ranks"] = "PERINGKAT MUGGLE",

	["hacker_lead"] = "HACKER TERAMAN",
	["hacker_ranks"] = "PERINGKAT HACKER",

	["wicked_lead"] = "WICKED TERKASAR",
	["wicked_ranks"] = "PERINGKAT WICKED",

	["keeper_lead"] = "KEEPER TERSIAGA",
	["keeper_ranks"] = "PERINGKT KEEPER",

	["joker_lead"] = "JOKER TERGILA",
	["joker_ranks"] = "PERINGKAT JOKER",

	["drifter_lead"] = "DRIFTER TERPESAT",
	["drifter_ranks"] = "PERINGKAT DRIFTER",

	["patron_lead"] = "PATRON TERHORMAT",
	["patron_ranks"] = "PERINGKAT PATRON",

	["archon_lead"] = "ARCHON TERLINCAH",
	["archon_ranks"] = "PERINGKAT ARCHON",

	["spectre_lead"] = "SPECTRE PALING BERHANTU",
	["spectre_ranks"] = "PERINGKAT SPECTRE",

	["thief_lead"] = "THIEF PALING TERSEMBUNYI",
	["thief_ranks"] = "PERINGKAT THIEF",

	["heretic_lead"] = "HERETIC TERKEJAM",
	["heretic_ranks"] = "PERINGKAT HERETIC",

	["chameleon_lead"] = "CHAMELEON PALING LAJU",
	["chameleon_ranks"] = "PERINGKAT CHAMELEON",

}

--TUTORIAL
module.tutorial = {

	["tut_big_1"] = "Selamat datang ke Tangga Gila!",
	["tut_big_2"] = "Pertama, belajar bagaimana cara berubah.",
	["tut_big_3"] = "Kamu sekarang adalah seorang patron, patron dapat membuat tangga.",
	["tut_big_4"] = "Semua mantra harus dilakukan dengan cara melompat.",
	["tut_big_5"] = "Keren kan? Sekarang ubahlah menjadi joker. Joker dapat membalik tangga.",
	["tut_big_6"] = "Kamu sekarang adalah seorang joker, gunakan mantra ini untuk membalik tangga.",
	["tut_big_7"] = "Sebagian mantra harus dilakukan pada tangga.",
	["tut_big_8"] = "Sekarang, ubahlah menjadi keeper. Keeper dapat memindah tangga.",
	["tut_big_9"] = "Kamu sekarang adalah seorang keeper, gunakan mantra ini untuk memindah tangga.",
	["tut_big_10"] = "Lompat pada panah yang ditunjukkan untuk memindahkan tangga.",
	["tut_big_11"] = "Kamu akan melihat banyak tangga yang mengganggu dalam permainan ini.",
	["tut_big_12"] = "Kamu sekarang adalah seorang Wicked, gunakan mantra ini untuk menghancurkan tangga tersebut.",
	["tut_big_13"] = "Kamu bisa menghancurkan tannga di atas dengan cara melompat pada bawahnya.",
	["tut_big_14"] = "Sebelum kita mulai, biarkan aku tunjukkan kelas yang premium.",
	["tut_big_15"] = "Kamu sekarang adalah seorang Spectre, Spectre adalah sebuah kelas premium cocok untuk main solo.",
	["tut_big_16"] = "Tujuan kamu - naik ke atas dan ambilkan orbnya. Selamat bermain!",

	["tut_select"] = "Pilih mantra ini.",

	["tut_small_morph"] = "Lompat pada morph.",
	["tut_small_arrow"] = "Lompat pada panah.",
	["tut_small_stairs"] = "Lompat pada tantga.",


}

--SPELLS

--NOTE!!!!!!! 
--some spells may have confusing indexes, example
-- restore - call the orb,
-- movedown - restore

--this is due to compatibility with earlier versions, 
--just ignore those, and translate the values (right side only). 

module.specialreq = {

	["notground"] = "Tidak dapat dilakukan pada lantai dasar.",
	["restore"] = "Hanya dapat dilakukan pada lantai paling atas.",
	["event"] = "Tidak dapat dilakukan saat event lain berlangsung.",
	["drones"] = "Hanya dapat dilakukan ketika drone berada dalam mode normal.",
	["oneover"] = "Kamu hanya dapat mengaktifkan satu per satu overload mana.",
	["soft"] = "Tidak dapat dilakukan melalui tangga menyilang.",
	["flatten"] = "Dibutuhkan tangga yang berlawanan dalam simpang yang dipilih.",
	["wickedaltevent"] = "Tidak dapat dilakukan saat event lain berlangsung maupun regenerasi.",
	["confined"] = "Tidak dapat memindahkan tangga keluar dari arena permainan. Membutuhkan pilihan arah.",
	["onesteal"] = "Kamu hanya dapat mencuri satu per satu tangga.",
	["softthief"] = "Membutuhkan tangga yang telah dicuri. Tidak dapat dilakukan melalui tangga menyilang.",
	["uppass"] = "Membutuhkan tangga yang telah dicuri. Hanya dapat dilakukan pada platform luar di atas lantai dasar.",
	["sidepass"] = "Membutuhkan tangga yang telah dicuri. Tidak dapat dilakukan pada lantai dasar.",
	["noescape"] = "Gerbang yang lain harus berada pada area permainan.",
	["outdrift"] = "Hanya dapat dilakukan pada platform luar di atas lantai dasar.",
	["drifting"] = "Platform sasaran tidak boleh diselancarkan. Tidak dapat dilakukan pada lantai dasar.",
	["impostor"] = "Membutuhkan peringkat minimum Impostor untuk mengakses.",
	["charlatan"] = "Membutuhkan peringkat minimum Charlatan untuk mengakses.",
	["chameleonrigevent"] = "Tidak dapat dilakukan saat event lain berlangsung. Membutuhkan peringkat Usurper untuk mengakses. Membutuhkan multi token yang belum dipakai. ", 

}

module.executioninfo = {

	["arrows"] = "Harus diwujudkan pada panah platform.",
	--call the orb!
	["restore"] = "Harus diwujudkan hanya pada platform paling atas.",
	["below"] = "Harus diwujudkan pada tangga normal atau dimanipulasi.",
	["above"] = "Dapat diwujudkan pada tangga atau jembatan apapun dengan tangga normal atau dimanipulasi atasnya.",
	["centre"] = "Harus diwujudkan pada platform.",
	["arrowstimed"] = "Harus diwujudkan (secara berulang) pada panah platform.",
	["anywhere"] = "Dapat diwujudkan di manapun.",
	["noexe"] = "Mantra ini tidak memerlukan perwujudan.",
	["flip"] = "Harus diwujudkan pada tangga normal, terbalik, atau dimanipulasi.",
	["flipabove"] = "Dapat diwujudkan pada tangga atau jembatan apapun dengan tangga normal, terbalik, atau dimanipulasi atasnya.",
	["flipper"] = "Harus diwujudkan (secara berulang) pada tangga. Tangga yang berada di atas atau basah harus normal, terbalik, atau dimanipulasi.",
	["destroy"] = "Dapat diwujudkan pada tangga apapun yang tidak terkutuk.",
	["destroyabove"] = "Dapat diwujudkan pada tangga atau jembatan apapun dengan tangga apapun yang tidak terkutuk di atasnya.",
	["flatten"] = "Harus diwujudkan pada panah platform dengan tangga normal dan berlawanan menghalangi simpang tersebut.",
	["bender"] = "Harus diwujudkan (secara berulang) pada tangga. Tangga di atas dan/atau bawah harus normal atau dimanipulasi.",
	--restore!!!
	["movedown"] = "Dapat diwujudkan pada panah platform atau tangga spesial apapun.",
	["ascension"] = "Harus diwujudkan (secara berulang) pada tangga normal atau dimanipulasi (atau tangga terbalik pada peringkat lebih tinggi).",
	["blink"] = "Dapat diwujudkan pada tangga atau jembatan apapun dengan halangan atau tangga tidak terkutuk di atasnya.",
	["outer"] = "Harus diwujudkan hanya pada platform luar.",
	["riser"] = "Harus diwujudkan (secara berulang) pada platform.",
	["curse"] = "Harus diwujudkan pada tangga normal, terkutuk, atau dimanipulasi.",
	["curseabove"] = "Dapat diwujudkan pada tangga atau jembatan apapun dengan tangga normal, terkutuk, atau dimanipulasi di atasnya.",

}



module.spells = {}

--SPELL NAMES
module.spells.names = {

	--PATRON
	["summon"] = "Buat Tangga",
	["restore"] = "Panggil Orb", 
	["split"] = "Belah Tangga",
	["shrinkabove"] = "Ciut Tangga di Atas",
	["link"] = "Buat Penyambung",
	["portal"] = "Buat Portal",

	["summoner"] = "Pembuat",
	["patronrigevent"] = "Patron Rig (Sumbang Mana)",
	["patronevent"] = "Overload Tangga",
	["patronaltevent"] = "Ciut Semua Tangga",
	["patronmode"] = "Drone Mode Patron",
	["patronrefill"] = "Overload Mana (Patron)",
	["patronunion"] = "Gabung dengan Hantu (Patron)",

	--JOKER 
	["flip"] = "Balik Tangga",
	["flipabove"] = "Putar Tangga di Atas",
	["fake"] = "Buat Tangga Tipuan",
	["invisible"] = "Buat Tangga Tidak Terlihat",
	["disco"] = "Tangga Berdisko",
	["trap"] = "Buat Jebakan",

	["flipper"] = "Pemutar",
	["jokerrigevent"] = "Joker Rig",
	["jokerevent"] = "Selubung Semua Tangga",
	["jokeraltevent"] = "Putar Semua Tangga",
	["jokermode"] = "Drone Mode Joker",
	["jokerrefill"] = "Overload Mana (Joker)",
	["jokerunion"] = "Gabung dengan Hantu (Joker)",

	--WICKED
	["destroy"] = "Hancurkan Tangga",
	["destroyabove"] = "Hancurkan Tangga di Atas",
	["bend"] = "Bengkok Tangga ke Atas",
	["damage"] = "Cacatkan Tangga di Atas",
	["flatten"] = "Bengkok Tangga ke Bawah",
	["wall"] = "Buat Dinding" ,

	["bender"] = "Pembengkok",
	["wickedrigevent"] = "Wicked Rig",
	["wickedevent"] = "Hancurkan Semua Tangga Normal",
	["wickedaltevent"] = "Hancurkan Semua Tangga",
	["wickedmode"] = "Drone Mode Wicked",
	["wickedrefill"] = "Overload Mana (Wicked)",
	["wickedunion"] = "Gabung dengan Hantu (Wicked)",

	--KEEPER
	["move"] = "Pindah Tangga",
	["rotate"] = "Putar Tangga",
	["moveup"] = "Pindah Tangga ke Atas",
	["movedown"] = "Pulih Tangga",
	["moverandom"] = "Gerak Tangga di Atas secara Acak",
	["rig"] = "Gerak secara Acak",

	["ascension"] = "Kenaikan",
	["keeperrigevent"] = "Keeper Rig",
	["keeperevent"] = "Rombak Kembali",
	["keeperaltevent"] = "Pulih Semua Tangga",
	["keepermode"] = "Drone Mode Keeper",
	["keeperrefill"] = "Overload Mana (Keeper)",
	["keeperunion"] = "Gabung dengan Hantu (Keeper)",

	--SPECTRE
	["phantom"] = "Buat Tangga Berhantu",
	["ghost"] = "Hantui Tangga di Atas",
	["shadow"] = "Materialisasi Tangga",
	["horizontal"] = "Teleport secara Horizontal",
	["random"] = "Teleport secara Acak",
	["vertical"] = "Teleport secara Vertikal",

	["traveller"] = "Penjelajah",
	["spectrerigevent"] = "Spectre Rig",
	["spectreevent"] = "Imaginasi Tangga",
	["spectrealtevent"] = "Penghantuan Semua Tangga",
	["spectremode"] = "Drone Mode Spectre",
	["spectrerefill"] = "Overload Mana (Spectre)",
	["spectreunion"] = "Gabung dengan Hantu (Spectre)",

	--HACKER
	["dash"] = "Lari",
	["blink"] = "Sulap",
	["swap"] = "Berganti Posisi",
	["slide"] = "Eskalator Menurun",
	["slideup"] = "Eskalator Menaik",
	["glitch"] = "Glitch Tangga",

	["speedup"] = "Usain Bolt",
	["hackerrigevent"] = "Hacker Rig",
	["hackerevent"] = "Eskalasi Tangga",
	["hackeraltevent"] = "Eskalasi Menaik Semua Tangga",
	["hackermode"] = "Drone Mode Hacker",
	["hackerrefill"] = "Overload Mana (Hacker)",
	["hackerunion"] = "Gabung dengan Hantu (Hacker)",

	--THIEF
	["steal"] = "Curi Tangga",
	["stealabove"] = "Curi Tangga di Atas",
	["place"] = "Kembalikan Tangga",
	["sidepass"] = "Buat Jalan Pintas",
	["drop"] = "Enyahkan Tangga",

	["heist"] = "Buffet Tangga",
	["thiefrigevent"] = "Thief Rig (Curi Mana)",
	["thiefevent"] = "Bumi Datar",
	["thiefaltevent"] = "Buat Semua Tangga menjadi Jalan Pintas",
	["thiefmode"] = "Drone Mode Thief",
	["thiefrefill"] = "Overload Mana (Thief)",
	["thiefunion"] = "Gabung dengan Hantu (Thief)",

	--ARCHON
	["splitup"] = "Buat Portal ke Atas",
	["splitrotate"] = "Buat Portal ke Sebelah",
	["splitside"] = "Buat Portal ke Samping",
	["splitrandom"] = "Buat Portal secara Acak",
	["cancelsplit"] = "Hancurkan Portal",
	["splitforward"] = "Buat Portal antara 2 Platform",

	["splitter"] = "Buffet Portal",
	["archonrigevent"] = "Archon Rig",
	["archonevent"] = "Buat Portal pada Semua Tangga",
	["archonaltevent"] = "Buat Portal ke Atas pada Semua Tangga",
	["archonmode"] = "Drone Mode Archon",
	["archonrefill"] = "Overload Mana (Archon)",
	["archonunion"] = "Gabung dengan Hantu (Archon)",

	--DRIFTER
	["indrift"] = "Selancar",
	["outdrift"] = "Selancar ke Luar",
	["updrift"] = "Lift ke Atas",
	["diagdrift"] = "Selancar ke Samping",
	["spin"] = "Putar Tangga",
	["driftabove"] = "Angkat Tangga di Atas",

	["riser"] = "Pembangkit",
	["drifterrigevent"] = "Drifter Rig",
	["drifterevent"] = "Putar Semua Tangga",
	["drifteraltevent"] = "Angkat Semua Tangga",
	["driftermode"] = "Drone Mode Drifter",
	["drifterrefill"] = "Overload Mana (Drifter)",
	["drifterunion"] = "Gabung dengan Hantu (Drifter)",

	--HERETIC
	["createcursed"] = "Buat Tangga Terkutuk",
	["curse"] = "Kutuk/Pulih Tangga",
	["curseabove"] = "Kutuk/Pulih Tangga di Atas",
	["curseinter"] = "Kutuk Simpang",
	["autodown"] = "Blokade Atas",
	["autoup"] = "Blokade Bawah",

	["malediction"] = "Kutukan",
	["hereticrigevent"] = "Heretic Rig",
	["hereticevent"] = "Refraksi Tangga",
	["hereticaltevent"] = "Kutuk Semua Tangga",
	["hereticmode"] = "Drone Mode Heretic",
	["hereticrefill"] = "Overload Mana (Heretic)",
	["hereticunion"] = "Gabung dengan Hantu (Heretic)",

	--CHAMELEON
	["ditch"] = "Tangga Menyilang",
	["warp"] = "Tangga Fleksibel",
	["chamdown"] = "Pindah Tangga ke Bawah",
	["chamdraw"] = "Sulap Tangga",
	["chamdrawabove"] = "Sulap Tangga di Atas",

	["chameleonrigevent"] = "Chameleon Rig",
	["chameleonmode"] = "Drone Mode Chameleon",
	["chameleonrefill"] = "Overload (Chameleon)",
	["chameleonunion"] = "Gabung dengan Hantu (Chameleon)",

}

--translate these too!!!
local union = "Ini adalah mantra Gabung dengan Hantu yang bersifat terbatas. Ketika berada dalam mode ini, kamu bisa tembus melalui tangga yang menghalangi dan berjalan pada hantu, obby, dan tangga tipuan. Tangga spesial tidak akan berdampak pada kamu dan tidak akan mengaktifkan rig. Namun, kamu tidak dapat melakukan mantra dalam mode ini."
local overload = "Ini adalah mantra Overload. Mantra ini akan memberikan kamu satu mana setiap 6 detik pada menit selanjutnya (total ada 10). Kamu hanya dapat mengaktifkan satu per satu overload."

module.spells.descriptions = {

	--PATRON
	["summon"] = "Mantra ini membuatmu dapat membuat tangga tunggal menghadap arah yang telah ditentukan. Jika ada tangga menyilang yang beehalangan, tangga tersebut akan dihancurkan.",
	["restore"] = "Mantra ini memanggil orb untuk pergi ke platform yang telah ditentukan. Naiklah ke peringkat Defender untuk mengurangi biayanya menjadi 2 mana. Naiklah ke peringkat Saviour untuk menambah kecepatan orb sebanyak dua kali lipat.",
	["shrinkabove"] = "Mantra ini akan menciut tangga di atas, supaya kamu bisa berjalan sekitar itu.",
	["link"] = "Mantra ini akan membuat jembatan energi di antara 2 platform selama 60 detik. Hanya satu sisi dari celah  yang akan ditutupi supaya bisa berjalan sekitar itu. Naiklah ke peringkat Creator untuk memperpanjang waktunya menjadi 120 detik.",
	["split"] = "Mantra ini membelah sebuah tangga menjadi dua tangga yang berlawanan, membuat kita dapat mengakses semua empat platform.",
	["portal"] = "Mantra ini membuat sebuah portal yang akan teleport semua pemain satu platform ke atas. Sebuah portal berlangsung selama 60 detik. Naiklah ke peringkat Protector untuk memperpanjang waktunya menjadi 120 detik.",

	["summoner"] = "Mantra ini bersifat terbatas. Mantra ini akan memperbolehkan kamu untuk membuat tangga sebanyak mungkin dalam satu menit. Terus melompat pada panah untuk membuat tangga. Naiklah ke peringkat Guardian untuk memperpanjang waktunya menjadi 90 detik. Melakukan mantra ini juga akan mengisi ulang mana untuk semua patron dengan peringkat Friend ke atas.",
	["patronrigevent"] = "Ini adalah sebuah mantra rig. Ini akan membuat rig pada semua tangga normal, satu per satu, dengan hadiah mana. Ketika diaktifkan, tangga akan menambah satu mana ke pemain yang mengaktifkannya. Jika pemain memiliki mana maksimal, tangga tidak akan diaktifkan. Setelah diaktifkan, tangga akan menjadi seperti semula.",
	["patronevent"] = "Ini adalah sebuah mantra event. Mantra ini akan membuat tangga pada simpang yang kosong dan tidak terkutuk.",
	["patronaltevent"] = "Ini adlaah sebuah mantra event. Ini akan menciut semua tangga normal, satu per satu.",
	["patronmode"] = "Ini adalah sebuah mantra drone. Mantra ini akan mengubah mode drone menjadi patron. Jika jumlah tangga masih dalam batas, drone patron akan melakukan sebuah mantra menciut secara acak dan Patron Rig pada tangga normal. Tangga spesial akan dipulihkan sebagai gantinya. Di luar batas, drone akan membuat dan menghancurkan secara berurut.",
	["patronrefill"] = overload,
	["patronunion"] = union,

	--JOKER
	["flip"] = "Mantra ini membalikkan tangga, sehingga bagian atas menjadi bagian bawah dan sebaliknya. Ketika dibalik, tangga menjadi kebal terhadap mantra, kecuali hancurkan, curi dan pindah (setelah naik peringkat). Namun, kamu bisa membalikkan balik tangganya.",
	["flipabove"] = "Mantra ini membalikkan tangga yang berada di atasnya, sehingga bagian atas menjadi bagian bawah dan sebaliknya. Ketika dibalik, tangga menjadi kebal terhadap mantra, kecuali hancurkan, curi dan pindah (setelah naik peringkat). Namun, kamu bisa membalikkan balik tangganya.",
	["fake"] = "Mantra ini memperbolehkan kamu untuk membuat tangga tipuan pada arah yang telah ditentukan. Jika ada tangga menyilang yang berhalangan, tangga tersebut akan dihancurkan. Siapapun (termasuk kamu) yang berusaha untuk naik akan jatuh, kecuali Tricksters, IT, dan pemain dalam mode Penggabungan.",
	["invisible"] =  "Mantra ini membuat tangga yang tidak terlihat. Namun, mantra ini tidak akan menghancurkan tangga menyilang apapun dengan mantra Patron, sehingga kamu hanya dapat meletakkan tangga dalan simoang kosong. Naiklah ke peringkat Jester untuk melihat semua tangga tidak terlihat dan punya pilihan untuk tidak menunjukkannya.",
	["disco"] = "Mantra ini membuat tangga menjadi berdisko. Siapapun (termasuk kamu) akan berhenti dan joget selama 5 detik (Biasanya 2 kali). Peringkat Comic ke atas kebal terhadap tangga berdisko.",
	["trap"] = "Mantra ini membuat platform menjadi jebakan selama 60 detik. Siapapun (termasuk kamu) yang berjalan dalam jebakan tersebut akan jatuh ke platform di bawahnya. Naiklah ke peringkat Jokester untuk dapat mendeteksi jebakan platform.",

	["flipper"] = "Mantra ini bersifat terbatas. Mantra ini memperbolehkan kamu untuk membalikkan tangga sebanyak mungkin dalam satu menit. Tangga di atas akan selalu dibalik, jika ditemukan. Jika tidak, tangga di bawahnya akan dibalikkan sebagai gantinya. Mantra ini juga akan mengisi ulang mana untuk semua Joker dengan peringkat Fool ke atas.",
	["jokerrigevent"] = "Ini adalah sebuah mantra rig. Mantra ini akan membuat rig pada semua tangga normal, satu per satu, dengan mantra balik. Ketika diaktifkan, tangga akan dibalikkan secara otomatis.",
	["jokerevent"] = "Ini adalah sebuah mantra event. Mantra ini akan membuat sebuah tangga normal menjadi tidak terlihat. Pesan yang ditemukan tidak akan ditampilkan untuk menghindari spam.",
	["jokeraltevent"] = "Ini adalah sebuah mantra event. Mantra ini akan membalikkan semua tangga normal.",
	["jokermode"] = "Ini adalah sebuah mantra drone. Mantra ini akan mengubah mode drone menjadi Joker. Jika jumlah tangga masih dalam batas, drone joker akan melakukan mantra tidak terlihat dan Joker Rig secara acak pada tangga normal. Tangga spesial akan dipulihkan sebagai gantinya. Di luar batas, drone akan membuat dan menghancurkan secara berurut.",
	["jokerrefill"] = overload,
	["jokerunion"] = union,

	--WICKED
	["destroy"] = "Mantra ini menghancurkan tangga. Tidak seperti mantra lainnya, mantra ini bekerja pada tangga apapun. Naiklah ke peringkat Vile untuk melakukan mantra ini dengan gratis. Naiklah ke peringkat Vicious untuk mendapatkan 1 mana setiap kali kamu menghancurkan sebuah tangga spesial. Naiklah ke peringkat Annihilator untuk menghancurkan tangga terkutuk.",
	["destroyabove"] = "Mantra ini menghancurkan tangga yang berada di atasnya. Tidak seperti mantra lainnya, mantra ini bekerja pada tangga apapun. Naiklah ke peringkat Vicious untuk mendapatkan 1 mana setiap kali kamu menghancurkan sebuah tangga spesial. Naiklah ke peringkat Annihilator untuk menghancurkan tangga terkutuk.",
	["bend"] = "Mantra ini membengkokkan tangga ke atas. Gunakan mantra ini untuk mengakses platform di atas.",
	["damage"] = "Mantra ini membuat sebuah tangga menjadi sebuah obby dengan cara menghapus sebagian besar anak tangganya. Sebelum mencoba, ingatlah mengenai cooldown lompat. Naiklah ke peringkat Destroyer untuk berjalan seperti tangga normal.",
	["flatten"] = "Mantra ini membengkokkan tangga sebelahan ke bawah. Gunakan mantra ini untuk mengakses platform sebelah.",
	["wall"] = "Mantra ini membuat sebuah dinding energi pada platform dan juga sebuah jembatan yang terhubung ke platform selama 60 detik. Hanya Wicked yang dapat melewati dinding dan berjalan melalui jembatan. Dinding juga dapat dipaksa oleh mantra teleport dari spectre, lari dari hacker, atau Gabung dengan Hantu.",

	["bender"] = "Mantra ini bersifat terbatas. Mantra ini memperbolehkan kamu untuk membengkokkan tangga sebanyak mungkin dalam satu menit. Tangga di atas dan di bawah akan juga dibengkokkan secara bersamaan jika memenuhi syarat. Naiklah ke peringkat Nemesis untuk memperpanjang waktunya menjadi 90 detik. Mantra ini juga akan mengisi ulang mana untuk semua Wicked dengan peringkat Mean ke atas.",
	["wickedrigevent"] = "Ini adalah sebuah mantra rig. Mantra ini akan membuat rig pada semua tangga normal, satu per satu dengan mantra menghancurkan. Saat diaktifkan, tangga akan dihancurkan secara otomatis. Naiklah ke peringkat Devil untuk berjalan pada Wicked Rig tanpa mengaktifkannya.",
	["wickedevent"] = "Ini adalah sebuah mantra event. Mantra ini akan menghancurkan semua tangga normal dalam permainan. Regenerasi tidak akan diaktifkan.",
	["wickedaltevent"] = "Ini adalah sebuah mantra event. Mantra ini akan menghancurkan semua tangga dan kutukan dalam permainan, tanpa pengecualian. Regenerasi akan diaktifkan.",
	["wickedmode"] =  "Ini adalah sebuah mantra drone. Mantra ini akan mengubah mode drone menjadi Wicked. Jika jumlah tangga masih dalam batas, drone wicked akan melakukan mantra bengkok dan Wicked Rig pada tangga normal secara acak. Tangga spesial akan dipulihkan sebagai gantinya. Di luar batas, drone akan membuat dan menghancurkan secara berurut.",
	["wickedrefill"] = overload,
	["wickedunion"] = union,

	--KEEPER
	["move"] = "Mantra ini akan memindahkan tangga secara horizontal, menghancurkan semua tangga yang berhalangan. Setelah dilakukan, sebuah window akan muncul, mengharuskan kamu untuk memilih sebuah arah. Tangga tidak dapat dipindahkan keluar dari area permainan. Naiklah ke peringkat Controller untuk memindahkan tangga yang terbalik.",
	["rotate"] = "Mantra ini akan memutarkan tangga secara horizontal fashion, menghancurkan semua tangga yang berhalangan. Setelah dilakukan, sebuah window akan muncul, mengharuskan kamu untuk memilih sebuah arah dan kemiringan. Tangga tidak dapat diputar keluar dari area permainan. Naiklah ke peringkat Controller untuk memutarkan tangga yang terbalik.",
	["moveup"] = "Mantra ini akan memindahkan tangga ke atas, menghancurkan semua tangga yang berhalangan. Tangga tidak dapat dipindahkan ke atas level paling atas. Naiklah ke peringkat Controller untuk memindahkan tangga yang terbalik.",
	["movedown"] = "Mantra ini memperbaiki tangga spesial apapun. Jika tangga sudah normal, mantra ini tidak akan diwujudkan. Naiklah ke peringkat Captain untuk melakukan mantra ini dengan gratis. Naiklah ke peringkat Admiral supaya bisa dapat memperbaiki tangga dan simpang terkutuk.",
	["moverandom"] = "Mantra ini akan memindahkan atau memutarkan tangga yang berada di atas dalam arah yang acak, menghancurkan semua tangga yang berhalangan. Naiklah ke peringkat Operator untuk menghindari tangga memindah ke bawah. Naiklah ke peringkat Controller untuk memindahkan tangga yang terbalik.",
	["rig"] = "Mantra ini akan memindahkan atau memutarkan tangga dalam arah yang acak, menghancurkan semua tangga yang berhalangan. Naiklah ke peringkat Operator untuk menghindari tangga memindah ke bawah. Naiklah ke peringkat Controller untuk memindahkan tangga yang terbalik.",

	["ascension"] = "Mantra ini bersifat terbatas. Mantra ini memperbolehkan kamu untuk memindahkan tangga ke atas sebanyak mungkin dalam satu menit. Naiklah ke peringkat Commander untuk memperpanjang waktunya menjadi 90 detik. Mantra ini juga akan mengisi ulang mana untuk semua Keeper dengan peringkat Handler ke atas.",
	["keeperrigevent"] = "Ini adalah sebuah mantra rig. Ini akan membuat rig pada semua tangga normal, satu per satu dengan mantra pindah secara acak. Saat diaktifkan, tangga akan dipindahkan atau diputarkan dalam arah yang acak. Naiklah ke peringkat Operator untuk menghindari tangga memindah ke bawah. Naiklah ke peringkat Sentinel untuk berjalan pada Keeper Rig tanpa mengaktifkannya.",
	["keeperevent"] = "Ini adalah sebuah mantra event. Sebelum diwujudkan, kamu bisa pilih mode lembut atau terpaksa. Dalam mode lembut, mantra ini akan memindahkan atau memutarkan semua tangga normal dalam arah yang acak tanpa menghancurkan apapun dalam proses. Dalam mode terpaksa, mantra ini akan memindahkan atau memutarkan semua tangga dalam arah yang acak, menghancurkan tangga yang berhalangan.",
	["keeperaltevent"] = "Ini adalah sebuah mantra event. Mantra ini akan memulihkan semua tangga dalam permainan, termasuk yang terkutuk. Tidak seperti mantra 'Hancurkan Semua Tangga', mantra ini tidak akan menghancurkan simpang yang terkutuk.",
	["keepermode"] = "Ini adalah sebuah mantra drone. Mantra ini akan mengubah mode drone menjadi keeper. Jika jumlah tangga masih dalam batas, drone keeper akan melakukan mantra 'Pindah secara Terpaksa' dan Keeper Rig secara acak pada tangga normal. Tangga spesial akan dipulihkan sebagai gantinya. Di luar batas, drone akan membuat dan menghancurkan secara berurut.",
	["keeperrefill"] = overload,
	["keeperunion"] = union,

	--SPECTRE
	["phantom"] = "Mantra in akan membuat tangga \"berhantu\" pada arah yang telah ditentukan. Jika terdapat tangga menyilang yang berhalangan, tangga tersebut akan dihancurkan. Tangga akan memudar secepat mungkin setelah mantra dilakukan, menjadi tidak terlihat.",
	["ghost"] = "Mantra ini memperbolehkan kamu untuk menghantui tangga yang berada di atas. Kamu bisa berjalan melalui tangga yang telah dihantui, tetapi tidak dapat berjalan pada tangga tersebut sampai kamu telah menjadi peringkat Aether.",
	["shadow"] = "Mantra ini memperbolehkan kamu untuk mematerialisasi tangga, memulihkan mereka menjadi normal. Naiklah ke peringkat Phantom untuk melakukan mantra ini secara gratis.",
	["horizontal"] = "Mantra ini memperbolehkan kamu untuk teleport secara horizontal pada arah yang telah ditentukan. Kamu bisa teleport melalui tangga yang berhalangan.",
	["random"] = "Mantra ini akan teleport kamu ke sebuah platform pada level yang sama secara acak.",
	["vertical"] = "Manta ini akan teleport kamu ke platform yang berada di atas.",

	["traveller"] = "Mantra ini bersifat terbatas. Mantra ini memperbolehkan kamu untuk melakukan mantra 'Teleport secara Horizontal' ebanyak mungkin dalam satu menit. Naiklah ke peringkat Shadow untuk memperpanjang waktunya menjadi 90 detik. Mantra ini juga akan mengisi ulang mana untuk semua spectre denagn peringkat Shade ke atas.",
	["spectrerigevent"] = "Ini adalah sebuah mantra rig. Mantra ini akan membuat rig pada semua tangga normal, satu per satu, dengan mantra Imaginasi. Saat diaktifkan, tangga memiliki kemungkinan 50% untuk penghantuan. Naiklah ke peringkat Vision untuk dapat berjalan pada Spectre Rig tanpa mengaktifkannya.",
	["spectreevent"] = "Ini adalah sebuah mantra event. Sebelum dilakukan, kamu bisa pilih mode penghantuan secara lembut atau terpaksa. Dalam mode lembut, mantra ini akan memindahkan atau memutarkan tangga normal dalam arah yang acak tanpa menghancurkan apapun dalam proses. Dalam mode terpaksa, manyra ini akan memindahkan atau memutarkan semua tangga dalam arah yang acak, menghancurkan tangga yang berhalangan.",
	["spectrealtevent"] = "Ini adalah sebuah mantra event. Mantra ini akan menghantui semua tangga normal. Naiklah ke peringkat Aether untuk berjalan pada tangga yang telah dihantui. Mode Gabung dengan Hantu juga dapat digunakan untuk hal yang serupa.",
	["spectremode"] = "Ini adalah sebuah mantra drone. Mantra ini akan mengubah mode drone menjadi spectre. Jika jumlah tangga masih dalam batas, drone spectre akan melakukan mantra 'Pemindahan Lembut' atau 'Putarkan Tangga' dan Spectre Rig pada tangga normal secara acak. Tangga spesial akan dipulihkan sebagai gantinya. Di luar batas, drone akan membuat dan menghancurkan secara berurut.",
	["spectrerefill"] = overload,
	["spectreunion"] = union,

	--HACKER
	["dash"] = "Mantra ini akan teleport kamu dalam arah yang telah ditentukan. Tidak seperti mantra spectre, kamu tidak dapat teleport melalui tangga. Naiklah ke peringkat Cracker untuk mempercepat mantra ini sebanyak 50%.",
	["blink"] = "Mantra ini akan teleport kamu di sekitar tangga menghalangi yang berada di atas. Tangga harus berada dalam arah yang berlawanan dengan tangga yang berada di bawah supaya mantra ini dapat bekerja. Naiklah ke peringkat Exploiter untuk mempercepat mantra ini sebanyak 50%.",
	["swap"] = "Mantra ini akan teleport kamu ke tempat dimana hantumu berada. Tidak sepert mantra dasar lainnya, mantra ini dapat dilakukan di manapun.",
	["slide"] = "Mantra ini akan mengubah tangga menjadi eskalator menurun. Eskalator hanya akan berjalan ketika ada pemain yang berada padanya. Naiklah ke peringkat Scripter untuk menghentikan eskalator menurun secara otomatis.",
	["slideup"] = "Mantra ini akan mengubah tangga menjadi eskalator menaik. Eskalator hanya akan berjalan ketika ada pemain yang berada padanya.",
	["glitch"] = "Mantra ini akan memberikan glitch pada tangga, teleport kamu dan mereka ke tempat yang berbeda pada level yang sama. Naiklah ke peringkat Zero untuk teleport ke tangga yang berdekatan dengan orb, jika kamu telah berada pada level paling atas.",

	["speedup"] = "Mantra ini bersifat terbatas. Mantra ini tidak memerlukan perwujudan, namun mantra ini akan meningkatkan kecepatan berjalanmu sebanyak 50% selama satu menit. Kamu tidak dapat melakukan mantra lain dalam mode ini. Mantra ini juga akan mengisi ulang mana untuk semua hacker dengan peringkat Geek ke atas.",
	["hackerrigevent"] = "Ini adalah sebuah mantra rig. Mantra ini akan membuat rig pada semua tangga normal, satu per satu, dengan mantra Glitch. Saat diaktifkan, tangga akan teleport pemain dan tangganya sendiri ke tempat yang berbeda pada level yang sama player. Hanya satu pemain yang akan diteleport. Naiklah ke peringkat Reaper untuk berjalan pada Hacker Rig tanpa mengaktifkannya.",
	["hackerevent"] = "Ini adalah sebuah mantra event. Mantra ini akan mengubah semua tangga normal, satu per satu, menjadi eskalator menaik atau menurun.",
	["hackeraltevent"] = "Ini adalah sebuah mantra event. Mantra ini akan mengubah semua tangga normal, satu per satu, menjadi eskalator menaik.",
	["hackermode"] =  "Ini adalah sebuah mantra drone. Mantra ini akan mengubah mode drone mnejadi hacker. Jika jumlah tangga masih dalam batas, drone hacker akan melakukan mantra eskalator atau Hacker Rig pada tangga normal secara acak. Tangga spesial akan dipulihkan sebagai gantinya. Di luar batas, drone akan membuat dan menghancurkan secara berurut.",
	["hackerrefill"] = overload,
	["hackerunion"] =  union,

	--THIEF
	["steal"] = "Mantra ini memoerbolehlan kamu untuk mencuri sebuah tangga normal atau dimanipulasi yang berada di bawah. Mantra ini atau mantra 'Curi Tangga di Atas' diperlukan untuk melakukan mantra dasar thief lainnya. Naiklah ke peringkat Hijacker supaya dapat mencuri tangga apapun. Naiklah ke peringkat Outlaw supaya dapat mencuri 2 tangga sekaligus.",
	["stealabove"] = "Mantra ini memoerbolehlan kamu untuk mencuri sebuah tangga normal atau dimanipulasi yang berada di atas. Mantra ini atau mantra 'Curi Tangga' diperlukan untuk melakukan mantra dasar thief lainnya. Naiklah ke peringkat Hijacker supaya dapat mencuri tangga apapun. Naiklah ke peringkat Outlaw supaya dapat mencuri 2 tangga sekaligus.",
	["place"] = "Mantra ini memperbolehkan kamu untuk mengembalikan tangga yang telah dicuri dalam arah yang telah ditentukan. Namun, mantra ini tidak akan menghancurkan tangga menyilang dengan mantra Patron, oleh karena itu kamu hanya bisa meletakkan tangga dalam simpang yang kosong.",
	["uppass"] = "Mantra ini memperbolehkan kamu untuk membuat tangga yang dicuri menjadi berbentuk spiral. Mantra ini hanya dapat dilakukan pada platform luar dan hanya berlangsung selama satu menit. Tangga yang berbentuk spiral kebal terhadap semua mantra. Naiklah ke peringkat Bandit supaya tangga dapat berlangsung selama dua menit.",
	["sidepass"] = "Mantra ini memperbolehkan kamu untuk membuat sebuah jalan pintas yang telah dibengkokkan dari tangga yang dicuri dalam arah yang telah ditentukan. Jalan ini hanya berlangsung selama satu menit dan kebal terhadap semua mantra. Naiklah ke peringkat Robber supaya jalan pintas dapat berlangsung selama dua menit.",
	["drop"] = "Mantra ini memoerbolehkan kamu untuk mengenyahkan tangga secara gratis, namun kamu hanya perlu mencari sebuah simpang yang kosong. Tangga yang dienyahkan akan menjadi datar.",

	["heist"] = "Mantra ini bersifat terbatas. Mantra ini memperbolehkan kamu untuk meletakkan tangga sebanyak mungkin. Tidak seperti mantra peletakan lainnya, mantra ini dapat dilakukan melalui tangga menyilang, mengiring tangga akan dicuri secara otomatis dalam mode ini. Mantra ini juga akan mengisi ulang mana untuk semua thief dengan peringkat Crook ke atas.",
	["thiefrigevent"] = "Ini adalah sebuah mantra rig. Mantra ini akan membuat rig pada semua tangga normal, satu per satu, dengan Thief Rig. Saat diaktifkan, tangga akan mencuri satu mana dari pemain yang mengaktifkannya dan menambahkannya pada manamu sendiri. Kamu tidak akan menerima mana jika jumlah manamu sedang dalam batas maksimal. Kamu juga tidak akan menerima mana jika kamu ganti kelas.",
	["thiefevent"] = "Ini adalah sebuah mantra event. Mantra ini akan mengubah semua tangga normal, satu per satu, menjadi tangga yang dienyahkan.",
	["thiefaltevent"] = "Ini adalah sebuah mantra event. Mantra ini akan membuat jalan pintas dalam arah utara dan selatan simpang. Jika simoang tersebut terkutuk, jalan pintas tidak akan dibuat.",
	["thiefmode"] = "Ini adalah sebuah mantra drone. Mantra ini akan mengubah mode drone menjadi thief. Jika jumlah tangga masih dalam batas, drone thief akan melakukan mantra curi atau pengembalian dan Thief Rig pada tangga normal secara acak. Tangga spesial akan dipulihkan sebagai gantinya. Di luar batas, drone akan membuat dan menghancurkan secara berurut.",
	["thiefrefill"] = overload,
	["thiefunion"] = union,

	--ARCHON
	["splitup"] = "Mantra ini akan menghubungkan tangga yang berada di bawah dengan tangga di atasnya dengan sebuah portal. Jika tidak ada tangga, sebuah portal akan dibuat. Naiklah ke peringkat Prodigy untuk mengesampingkan koneksi yang sudah ada. Naiklah ke peringkat Sage untuk menghiraukan koneksi ke bawah.",
	["splitrotate"] = "Mantra ini akan menghubungkan tangga yang berada di bawah dengan sebuah tangga dalam arah horizontal diputar yang telah ditentukan dengan sebuah portal. Jika tidak ada tangga, sebuah portal akan dibuat. This spell will connect below stairs to another in a rotated horizontal direction of your choosing with a portal. If there are no stairs, they will be created. Naiklah ke peringkat Prodigy untuk mengesampingkan koneksi yang sudah ada. Naiklah ke peringkat Illuminati supaya dapat berjalan melalui portal.",
	["splitside"] = "Mantra ini akan menghubungkan tangga yang berada di bawah dengan sebuah tangga dalam arah horizontal yang telah ditentukan dengan sebuah portal. Jika tidak ada tangga, sebuah portal akan dibuat. Naiklah ke peringkat Prodigy untuk mengesampingkan koneksi yang sudah ada. Naiklah ke peringkat Illuminati supaya dapat berjalan melalui portal.",
	["splitrandom"] = "Mantra ini akan menghubungkan tangga yang berada di bawah dengan simpang apapun yang berlaku dalam level yang sama. Jika tidak ada tangga, sebuah portal akan dibuat. Naiklah ke peringkat Illuminati supaya dapat berjalan melalui portal.",
	["cancelsplit"] = "Mantra ini akan menghancurkan portal apapun pada tangga. Naiklah ke peringkat Disciple supaya dapat menghancurkan portal platform. Naiklah ke peringkat Scholar untuk melakukan mantra ini secara gratis.",
	["splitforward"] = "Mantra ini akan menghubungkan dua platform dalam arah horizontal yang telah ditentukan dengan sebuah portal. Naiklah ke peringkat Disciple supaya dapat menghancurkan portal platform. Tangga yang berhuni tidak akan menghalangi portal. Naiklah ke peringkat Illuminati supaya dapat berjalan melalui portal.",

	["splitter"] = "Mantra ini bersifat terbatas. Mantra ini memperbolehkan kamu untuk membuat portal platform sebanyak mungkin selama satu menit. Naiklah ke peringkat Savant untuk memperpanjang waktunya menjadi 90 detik. Mantra ini juga akan mengisi ulang mana untuk semua archon dengan peringkat Adept ke atas.",
	["archonrigevent"] = "Ini adalah sebuah mantra rig. Mantra ini akan membuat rig pada semua tangga normal, satu per satu, dengan Archon Rig. Saat diaktifkan, tangga akan teleport pemain ke arah pemain sedang berjalan, melalui tangga yang berhalangan. Setelah diaktifkan, tangga akan menjadi seperti semula.",
	["archonevent"] = "Ini adalah sebuah mantra event. Mantra ini akan membuat portal pada semua tangga normal secara acak.",
	["archonaltevent"] = "Ini adalah sebuah mantra event. Mantra ini hanya akan membuat portal vertikal pada semua tangga normal.",
	["archonmode"] = "Ini adalah sebuah mantra drone. Mantra ini akan mengubah mode drone menjadi archon. Jika jumlah tangga masih dalam batas, dron archon akan melakukan mantra 'Buat Portal secara Acak' dan Archon Rig pada tangga normal secara acak. Tangga spesial akan dipulihkan sebagai gantinya. Di luar batas, drone akan membuat dan menghancurkan secara berurut.",
	["archonrefill"] = overload,
	["archonunion"] =  union,

	--DRIFTER
	["outdrift"] = "Mantra ini akan mengelilingi platform yang berada di bawah sekitar seluruh area permainan pada level yang sama. Mantra ini hanya dapat dilakukan pada platform luar. Naiklah ke peringkat Strider untuk mendapatkan bonus mana ketika berada pada sebuah elevator.",
	["indrift"] = "Mantra ini akan membuat sebuah papan selancar yang bersifat sementara, memindahkan kamu ke sebuah platform dalam arah yang telah ditentukan. Naiklah ke peringkat Strider untuk mendapatkan bonus mana ketika berada pada sebuah elevator.",
	["updrift"] = "Mantra ini akan membuat sebuah elevator menggunakan platform yang berada di atas dan di bawah. Platform akan dipulihkan setelah beberapa waktu berlangsung. Naiklah ke peringkat Vagabond untuk mempercepat mantra. Naiklah ke peringkat Traveller supaya dapat boost selancar ke level kedua. Naiklah ke peringkat Strider supaya dapat boost selancar lagi ke level ketiga.",
	["diagdrift"] = "Mantra ini akan membuat elevator ke samping menggunakan platform apapun yang berada di bawah secara diagonal. Platform akan dipulihkan setelah beberapa waktu berlangsung.",
	["spin"] = "Mqntra ini akan memutarkan tangga yang berada di bawah sebesar 180 derajat. Naiklah ke peringkat Nomad untuk dapat memutar tangga yang telah diselancar.",
	["driftabove"] = "Mantra ini akan menyelancar tangga yang berada di atas, sehingga kamu bisa berjalan padanya dan mendakinya, kalau kamu mau.",

	["riser"] = "Mantra ini beraifst terbatas. Mantra ini memperbolehkan kamu untuk membuat elevator platform vertikal sebanyak mungkin dalam satu menit. Kamu juga dapat boost lift ketika menggunakan mantra ini, jika peringkatmu sudah cukup tinggi. Naiklah ke peringkat Wayfarer untuk memperpanjang waktunya menjadi 90 detik. Mantra ini juga akan mengisi ulang mana untuk semua drifter dengan peringkat Wanderer ke atas.",
	["drifterrigevent"] = "Ini adalah sebuah mantra rig. Mantra ini akan membuat rig pada semua tangga normal, satu per satu, dengan Drifter Rig. Saat diaktifkan, tangga akan berputar. Naiklah ke peringkat Voyager untuk mendapatkan kekebalan terhadap rig ini.",
	["drifterevent"] = "Ini adalah sebuah mantra event. Mantra ini akan memutar semua tangga normal secara acak.",
	["drifteraltevent"] =  "Ini adalah sebuah mantra event. Mantra ini akan mengangkat semua tangga normal, memperbolehkan kamu untuk berjalan di bawah mereka.",
	["driftermode"] = "Ini adalah sebuah mantra drone. Mantra ini akan mengubah mode drone menjadi drifter. Jika jumlah tangga masih dalam batas, drone drifter akan melakukan mantra selancar dan Drifter Rig secara acak. Tangga spesial akan dipulihkan sebagai gantinya. Di luar batas, drone akan membuat dan menghancurkan secara berurut.",
	["drifterrefill"] = overload,
	["drifterunion"] = union,


	--HERETIC
	["createcursed"] = "Mantra ini memperbolehkan kamu untuk membuat tangga terkutuk dalam arah yang telah ditentukan. Tangga yang berhalangan akan dihancurkan. Naiklah ke peringkat Banished untuk menghancurkan tangga terkutuk yang berhalangan.",
	["curse"] = "Mantra ini akan mengutuk atau memulihkan tangga yang berada di bawah, tergantung pada apakah tangga tersebut terkutuk atau tidak.",
	["curseabove"] = "Mantra ini akan mengutuk atau memulihkan tangga yang berada di atas, tergantung pada apakah tangga tersebut terkutuk atau tidak. Tangga akan lift selama beberapa saat, memperbolehkan kamu untuk mendaki.",
	["curseinter"] = "Mantra ini akan memperbolehkan kamu untuk melakukan 'sulap' ke platform di sebelah, jika tidak ada tangga yang berhalangan. Simpang akan menjadi terkutuk setelah mantra ini dilakukan, sehingga pemain lain tidak dapat menggunakan simpang tersebut lagi. Naiklah ke peringkat Infidel supaya dapat menghapus kutuk sebuah simpang.",
	["autodown"] = "Gunakan mantra ini untuk membuat dan lift bagian bawah tangga yang dicerminkan. Hanya penggabungan hantu dan heretic yang dapat berjalan pada bagian tersebut.",
	["autoup"] = "Gunakan mantra ini untuk membuat dan lift bagian atas tangga yang dicerminkan. Anak tangga akan diturunkan. Hanya penggabungan hantu dan heretic yang dapat berjalan pada bagian tersebut.",

	["malediction"] = "Mantra ini bersifat terbatas. Mantra ini memperbolehkan kamu untuk membuat tangga terkutuk sebanyak mungkin dalam satu menit. Naiklah ke peringkat Accursed untuk memperpanjang waktunya menjadi 90 detik. Melakukan mantra ini juga akan mengisi ulang mana untuk semua heretic dengan peringkat Stranger ke atas.",
	["hereticrigevent"] = "Ini adalah sebuah mantra rig. Mantra ini akan membuat rig pada semua tangga normal, satu per satu, dengan Heretic Rig. Saat diaktifkan, tangga akan merasuki pemain yang mengaktifkannya. Mereka harus mencari 1 mana untuk dibebaskan. Pemain yang kesurupan tidak dapat melakukan mantra. Naiklah ke peringkat Unbeliever untuk mendapatkan kekebalan terhadap rig ini. Naiklah ke peringkat Exiled untuk mendapatkan 1 mana setiap kali seorang pemain menjadi kesurupan.",
	["hereticevent"] = "Ini adalah sebuah mantra. Mantra ini akan mengubah semua tangga normal menjadi blokade atas atau bawah.",
	["hereticaltevent"] = "Ini adalah sebuah mantra event. Mantra ini akan mengutuk semua tangga normal.",
	["hereticmode"] = "Ini adalah sebuah mantra drone. Mantra ini akan mengubah mode drone menjadi Heretic. Jika jumlah tangga masih dalam batas, drone heretic akan melakukan mantra blokade atau Heretic Rig pada tangga normal secara acak. Tangga spesial akan dipulihkan sebagai gantinya. Di luar batas, drone akan membuat dan menghancurkan secara berurut.",
	["hereticrefill"] = overload,
	["hereticunion"] =  union,

	--CHAMELEON
	["ditch"] = "Mantra ini dulunya merupakan mantra untuk kelas thief, sebelum menjadi tidak terpakai. Mantra ini akan mengubah tangga normal atau dimanipulasi menjadi tangga menyilang.",
	["warp"] = "Mantra ini dulunya merupakan mantra untuk kelas wicked, sebelum menjadi tidak terpakai. Mantra ini akan membuat tangga normal atau dimanipulasi menjadi fleksibel, sehingga pemain dapat kembali ke platform awal.",
	["chameleonrigevent"] = "Ini adalah sebuah mantra rig. Mantra ini akan membuat rig tangga pada semua tangga normal, satu per satu, dengan Chameleon Rig. Saat diaktifkan, tangga akan mewujudkan efek dari rig lain secara acak.",
	["chamdown"] = "Mantra ini dulunya merupakan mantra untuk kelas keeper, sebelum menjadi tidak terpakai. Mantra ini akan memindahkan tangga normal atau dimanipulasi ke basah. Jika peringkat Keepermu adalah Captain ke atas, kamu dapat memindahkan tangga yang terbalik.",
	["chamdraw"] = "Mantra ini dulunya merupakan mantra untuk kelas heretic, sebelum menjadi tidak terpakai. Mantra ini akan mengubah tangga menjadi sebuah sulap, membuat pemain lain tidak dapat turun, kecuali pemain tersebut mengaktifkan jembatan dari bawah.",
	["chamdrawabove"] = "Mantra ini dulunya merupakan mantra untuk kelas heretic, sebelum menjadi tidak terpakai. Mantra ini akan mengubah tangga menjadi sulap ke atas, memperbolehkan kamu untuk berjalan. Menaik tangga menjadi tidak mungkin, kecuali pemain lain mengaktifkan jembatan dari atas. Peringkat Unbeliever lama sekarang tidak aktif lagi dan sulap dari bawah menjadi tidak dapat dilakukan lagi.",
	["chameleonmode"] =  "Ini adalah sebuah mantra drone. Mantra ini akan mengubah mode drone menjadi chameleon. Jika jumlah tangga masih dalam batas, drone chameleon akan melakukan sebuah mantra dari mode lainnya atau Chameleon Rig pada tangga normal secara acak. Tangga spesial akan dipulihkan sebagai gantinya. Di luar batas, drone akan membuat dan menghancurkan secara berurut.",
	["chameleonrefill"] = overload,
	["chameleonunion"] = union,

}

--do not remove the unused ones, for compatibility
module.spells.manacosts = {
	"0 mana",
	"1 mana",
	"2 mana",
	"3 mana",
	"4 mana", 
	"0 mana + Tangga",
	"1 mana + Tangga",
	"2 mana + Tangga",
	"3 mana + Tangga", 
	"", 
	"10 mana" 
}

module.spells.tokencosts = {

	"1 Token",
	"2 Token",
	"3 Token",

	["chameleonrigevent"] = "2 Multi Token",
	["unlock"] = "(buka dengan 3 token)",
}

module.serverfeedback = {

	["scancel"] = "Batalkan mantranya untuk mengganti kelas",
	["morph"] = "Lompat di sini untuk menjadi %s",
	["raceclosed"] = "Balap sekarang telah ditutup.",
	["stay"] = "Tunggu di dalam lingkaran untuk berpartisipasi dalam balap ini!",
	["falsestart"] = "Awalan Palsu",
	["secret"] = "Rahasia ditemukan!",
	["traveller"] = "Naiklah ke peringkat Traveller untuk to mendorong LIFT KE ATAS.",
	["noboost"] = "Tidak bisa boost, tidak ada lagi platform di atas.",
	["platformlocked"] = "Platform yang dipilih sedang dikunci.",
	["strider"] = "Naiklah ke peringkat Strider untuk boost Lift ke Atas dua kali lipat.",
	["noupplatform"] = "Tidak bisa boost, tidak ada lagi platform di atas.",
	["boosted"] = "Selancar telah diboost!",
	["wrongdirection"] = "Kamu tidak melakukan mantra ini dalam arah tersebut.",
	["cursed"] = "Tangga terkutuk sedang berhalangan!",
	["banished"] = "Naiklah ke peringkat Banished untuk menghancurkan tangga menyilang yang terkutuk.",
	["blocked"] = "Simpang ini terkutuk.",
	["infidel"] = "Naiklah ke peringkat Infidel untuk memulihkan simpang yang terkutuk.",
	["admiral"] = "Naiklah ke peringkt Admiral untuk memulihkan simpang yang terkutuk.",
	["nostairs"] = "Tidak ada tangga di sini.",
	["noground"] = "Mantra ini tidak dapat dilakukan pada lantai dasar.",
	["oddonly"] = "Mantra ini tidak dapat dilakukan pada level ini.",
	["reveal"] = "Kamu telah menemukan tangga berhantu!",
	["keeperrig"] = "Tangga telah dipindahkan!",
	["hackerrig"] = "Tangga telah diberi glitch!",
	["jokerrig"] = "Tangga telah dibalik!",
	["wickedrig"] = "Tangga sedang meruntuh!",
	["spectrerig"] = "Tangga telah dihantui!",
	["notspectrerig"] = "Tangga BELUM dihantui!",
	["patronrig"] = "Kamu telah menerima 1 mana, sedekah dari %s!",
	["notpatronrig"] = "Kamu telah menerima 1 mana, tapi orangnya udah kabur!",
	["thiefrig"] = "%s telah mencuri 1 mana! Mau balas dendam?",
	["mythiefrig"] = "Kamu telah mencuri 1 mana dari %s, kejamnya kamu jadi orang...",
	["notthiefrig"] = "%s telah dihilangkan dari daftar buronan (bukan thief lagi) - tidak ada mana yang telah dicuri.",
	["leftthiefrig"] = "Thief telah kabur duluan -  tidak ada mana yang telah dicuri.",
	["hereticrig"] = "Kamu menjadi kesurupan!",
	["archonrig"] = "Archon teleport!",
	["drifterrig"] = "Tangga sedang memutar!",
	["noabove"] = "Tidak ada tangga di atas, lihat ke atas kenapa? (canda)",
	["noblink"] = "Kamu hanya dapat melakukan sulap melalui tangga yang menghalangi. Eh, kamu pesulap atau bukan sih?",
	["noblink2"] = "Kamu tidak dapat melakukan sulap pada jembatan dan tangga yang dibengkokkan ke bawah. Jangan bikin aku pusing berpikir terlalu keras!",
	["linklimit"] = "Hanya \"mantra mengarah ke atas\" yang dapat dilakukan pada rantai.",
	["new20pass"] = "Batas mana meningkat!",
	["newchampass"] = "Kamu sekarang dapat mengganti kelas saat mendaki!",
	["newspectrepass"] = "Kamu sekarang bisa menjadi SPECTRE!",
	["charreset"] = "Tereliminasi karena reset karakter.",
	["chamtutorial"] = "Kamu tidak dapat menggunakan kelas Chameleon dalam tutorial!",
	["champossessed"] = "Kamu tidak dapat menggunakan chameleon ketika kesurupan.",
	["chamspell"] = "Mohon wujudkan atau batalkan mantra ini terlebih dahulu.",
	["morphpossessed"] = "Kamu tidak bisa ganti kelas ketika kesurupan. Lagian, ngapain ya?",
	["nocode"] = "Mohon masukkan kodenya dulu. Lagian, gimana bisa dapet hadiah tanpa kode di sini?",
	["invalid"] = "Kode ini tidak berlaku. Dapet dari mana tuh kodenya?",
	["old"] = "Kode ini tidak aktif lagi. Maafin ya bikin kamu sampe cari ke Mbah Gugel :(",
	["accepted"] = "Kode berhasil ditebus. Selamat menikmati!",
	["tryspectre"] = "Mode spectre telah dibuka selama 10 menit! Jangan kabur dari server.",
	["endspectre"] = "Demo spectre akan berakhir dalam 1 menit!",
	["trycham"] = "Mode chameleon telah dibuka selama 10 menit! Jangan kabur dari server.",
	["endcham"] = "Demo chameleon akan berakhir dalam 1 menit!",
	["trymana"] = "Penyimpanan Lebih Besar telah dibuka selama 10 menit! Jangan kabur dari server.",
	["endmana"] = "Penyimpanan Lebih Besar akan berakhir dalam 1 menit!",
	["used"] = "Kode ini telah dipakai. Kalo bisa dipakai berulang kali, namanya curang!",
	["tooshort"] = "Pesanmu terlalu pendek dan tidak dikirim. Joker beneran ya?",
	["sent"] = "Pesanmu telah dikirim, terima kasih atas tanggapannya.",
	["noreshuffle"] = "Pilih mode rombak ulang terlebih dahulu!",
	["oneoverload"] = "Kamu tidak bisa punya beberapa overload mana aktif.",
	["overstarted"] = "Kamu telah mengaktifkan overload mana!",
	["overended"] = "Overload mana telah selesai.",
	["2minshare"] = "Paling sedikit 2 mana dibutuhkan...",
	["noshare"] = "Tidak ada pemain sekitar untuk menerima mana... Kasihan yah ga ada teman, sama seperti gua :(",
	["noinf"] = "Kamu tidak bisa membagi mana tidak terbatas! Jangan-jangan hacker beneran lagi...",
	["toomuch"] = "%s memiliki mana maksimal!",
	["shared"] = "Mana dibagi dengan %s!",
	["received"] = "%s telah membagi mana dengan kamu! Baiknya orang ini...",
	["muted"] = "% sekarang telah dimute.",
	["unmuted"] =  "%s sekarang telah diunmute. Mohon bersabar, ini ujian...",
	["kicked"] = "%s telah dikick!",
	["banned"] = "%s telah diban! Buat apaan tuh sampe diban?",
	["mekicked"] = "%s telah kick kamu dari server mereka.",
	["mebanned"] = "%s telah ban kamu dari server mereka. Kamu buat apaan sih bro sampe diban? Curhat aja gapapa ;)",
	["permban"] = "%s telah ban kamu dari permainan ini. Makan dah tuh!",
	["kick"] = "%s telah kick kamu dari permainan ini.",
	["48ban"] = "%s telah ban kamu selama 48 jam. Mari kita merenung sejenak...",
	["exiled"] = "Kamu telah diban dari server ini! BAN INI TIDAK BERLAKU PADA SERVER UMUM",
	["permbanned"] = "Kamu telah diban dari game ini. Ha, nyesal kan jadinya?",
	["timeout"] = "Ban kamu akan berakhir dalam: %02i jam dan %02i menit. Sabar, tinggal segitu lagi!",
	["notinrace"] = "Kamu tidak dapat ganti ke mode tidak terbatas saat berbalap! Lagian sejak kapan bisa begitu ya?",
	["notinreg"] = "Kamu tidak dapat mengganti mode tidak terbatas saat regenerasi!",
	["infinite"] = "Server sekarang berada dalam mode tidak terbatas!",
	["classic"] = "Server sekarang berada dalam mode klasik.",
	["casual"] = "Pemain kasual sekarang dapat melakukan mantra!",
	["nocasual"] = "Pemain kasual sekarang tidak dapat melakukan mantra.",
	["purge"] = "Penghancuran sekarang akan menyebabkan regenerasi dalam mode klasik!",
	["nopurge"] = "Penghancuran sekarang tidak akan menyebabkan regenerasi dalam mode klasik.",
	["noevens"] = "Level merata sekarang telah dibatasi.",
	["evens"] = "Level merata sekarang telah diaktifkan!",
	["orbmoves"] = "Orb Endgame akan berpindah dengan sendiri!",
	["orbstopped"] = "Orb Endgame tidak akan berpindah dengan sendiri.",
	["infreg"] = "Tangga akan diregenerasi setelah ronde tidak terbatas!",
	["noinfreg"] = "Tangga tidak akan diregenerasi setelah ronde tidak terbatas.",
	["drones"] = "Drone mini telah diaktifkan!",
	["nodrones"] = "Drone mini telah dinonaktifkan.",
	["dronefix"] = "Drone akan memulihkan tangga!",
	["nodronefix"] = "Drone tidak akan memulihkan tangga!",
	["droneunlock"] = "Drone akan menghancurkan simpang terkutuk!",
	["nodroneunlock"] = "Drone tidak akan menghancurkan simpang terkutuk.",
	["droneuncurse"] = "Drone akan memulihkan tangga terkutuk!",
	["nodroneuncurse"] = "Drone tidak akan memulihkan tangga terkutuk.",
	["dronemove"] = "Drone akan memindahkan tangga dalam mode normal!",
	["nodronemove"] = "Drone tidak akan memindahkan tangga dalam mode normal.",
	["dronespin"] = "Drone akan memutarkan tangga dalam mode normal!",
	["nodronespin"] = "Drone tidak akan memutarkan tangga dalam mode normal.",
	["noinput"] = "Tolong masukkan sebuah nilai!",
	["nonumber"] = "Tolong masukkan sebuah angka!",
	["notrace"] = "Kamu tidak dapat mengubah level menara saat berbalap!",
	["notultimate"] = "Kamu tidak dapat mengubah level menara saat adanya mantra pokok!",
	["notregen"] = "Kamu tidak dapat mengubah level menara saat regenerasi!",
	["wait"] = "Level menara sedang diubah, mohon untuk menunggu...",
	["duration"] = "Durasi balap berubah (ini tidak akan berefek pada balap sekarang)",
	["init"] = "Waktu interval tidak terbatas pertama telah diubah",
	["reduction"] = "Pengurangan waktu tidak terbatas telah diubah",
	["mininf"] = "Waktu interval tidak terbatas minimum telah diubah",
	["cooldown"] = "Rig and cooldown mantra event telah diubah",
	["speed"] = "Kecepatand rone mini telah diubah",
	["spin"] = "Durasi perlakuan drone mini telah diubah",
	["max"] = "Jumlah tangga maksimal telah diubah",
	["min"] = "Jumlah tangga minimum telah diubah",
	["curse"] = "Kemungkinan drone mengutuk tangga telah diubah",
	["block"] = "Kemungkinan drone mengutuk simpang telah diubah",
	["lock"] = "Kamu tidak dapat melakukan mantra sekarang",
	["ultwait"] = "Sebuah mantra pokok sedang berlangsung, mohon untuk menunggu...",
	["regwait"] = "Kamu tidak dapat melakukan mantra rig dan event ketika tangga sedang diregenerasi.",
	["coolwait"] = "Kamu tidak dapat melakukan mantra rig dan event sekarang, mohon untuk menunggu...",
	["notfound"] = "Error 404: Tangga tidak ditemukan. (easter egg dari penerjemah)",
	["normalrig"] = "Mantra ini hanya bekerja pada tangga normal dan dimanipulasi.",
	["locked"] = "Tangga tersebut sedang dikunci.",
	["nocursedblink"] = "Kamu tidak bisa melakukan sulap sekitar tangga terkutuk.",
	["isblocked"] = "Simpang ini sudah terkutuk.",
	["cantblock"] = "Tidak dapat mengutuk, ada tangga di sini. (mungkin tidak terlihat, mungkin iya)",
	["cantblock2"] = "Tidak dapat mengutuk, ada tangga menyilang yang berhalangan. (mungkin tidak terlihat, mungkin iya)",
	["noway"] = "Ada tangga yang lagi berhalangan (mungkin tidak terlihat, mungkin iya)",
	["noway2"] = "Ada tangga menyilang yang berhalangan. (mungkin tidak terlihat, mungkin iya)",
	["noplatform"] = "Tidak ada platform yang dapat ditemukan dalam arah tersebut.",
	["nopass"] = "Jalan pintas hanya dapat dibuat pada platform luar.",
	["pass"] = "Jalan pintas sudah ada di sini.",
	["link"] = "Jembatan sudah ada di sini.",
	["outdrift"] = "Selancar di luar hanya dapat dibuat pada platform luar.",
	["cantgate"] = "Arah ini sedang diblokir.",
	["wall"] = "Dinding sudah ada di sini.",
	["nocurse"] = "Hanya tangga normal, dikutuk, atau dimanipulasi yang dapat dikutuk/dipulih.",
	["nogate"] = "Tangga ini tidak digerbangi.",
	["noghost"] = "Hanya tangga berhantu yang dapat dimaterialisasi.",
	["noflip"] = "Hanya tangga normal, terbalik, atau dimanipulasi yang dapat dibalik.",
	["prodigy"] = "Naiklah ke peringkat Prodigy untuk mengesampingkan gerbang.",
	["wrongsplit"] = "Gerbang lain harus berada dalam area permainan. Apakah ada dimensi lain di sana?",
	["blockedplit"] = "Tidak dapat membuat portal, simpang sasaran sedang terkutuk.",
	["cursedtarget"] = "Ada tangga terkutuk pada arah tersebut.",
	["lockedsplit"] = "Tidak dapat membuat portal, tangga lain sedang dikunci.",
	["failedgate"] = "Pembuatan portal gagal.",
	["nomove"] = "Hanya tangga normal, terbalik, atau dimanipulasi yang dapat dipindahkan.",
	["controller"] = "Naiklah ke peringkat Controller untuk memindahkan tangga yang terbalik.",
	["wrongmove"] = "Tangga tidak dapat dipindah keluar dari area permainan.",
	["blockedmove"] = "Tidak dapat memindahkan tangga, simpang sasaran sedang terkutuk.",
	["lockedmove"] = "Tidak dapat memindahkan tangga, tangga yang berhalangan sedang dikunci.",
	["normal"] = "Gapapa, tangga ini normal kok!",
	["nomad"] = "Naiklah ke peringkat Nomad untuk memutar tangga yang diselancarkan.",
	["hijacker"] = "Naiklah ke peringkat Hijacker untuk mencuri tangga yang dipulih dari kutukan.",
	["nocursesteal"] = "Tangga terkutuk tidak dapat dicuri.",
	["lockedinter"] = "Simpang ini sedang dikunci.",
	["possessed"] = "Kamu tidak dapat melakukan mantra ketika kesurupan. Lagian arwah bisanya omong doang...",
	["lockedspell"] = "Mantra ini belum dibuka!",
	["unlocked"] = "Mantra telah dibuka, selamat!",
	["nomana"] = "Tidak cukup mana!",
	["spelllock"] = "Kamu tidak dapat melakukan mantra sekarang.",
	["notokens"] = "Tidak cukup token!",
	["nothere"] = "Kamu tidak dapat melakukan mantra ini dalam tutorial. Terlalu cepat, bos!",
	["onlyracers"] = "Hanya pemain berpartisipasi yang dapat melakukan mantra.",
	["cancelfirst"] = "Udah dibilangin, mohon batalkan mantra ini terlebih dahulu!!!",
	["stashfull"] = "Penyimpanan tanggamu sudah penuh.",
	["stashempty"] = "Kamu harus mencuri tangga sebelum melakukan mantra ini.",
	["notdefault"] = "Drone harus kembali ke mode normal terlebih dahulu, mohon ditunggu...",
	["cooldownwait"] = "Kamu tidak dapat melakukan mantra rig dan event sekarang, mohon untuk menunggu selama %d detik.",
	["nospellsnow"] = "Kamu tidak dapat melakukan mantra sekarang.",

	["unknown"] = "Error 400: Isu tidak diketahui. (easter egg dari penerjemah)",

}

module.serverbroadcast = {
	["pranked"] = "%s telah ngeprank %s!",
	["found"] = "%s telah menemukan tangga berhantu punya %s!",
	["disco"] = "%s sedang menikmati musik diskonya %s.",
	["obby"] = "%s sedang mencoba untuk melakukan obby-nya %s.",
	["default"] = "Drone sekarang telah kembali ke mode normal.",
	["regen"] = "Tangga sedang dalam regenerasi.",
	["done"] = "Regenerasi selesai.",
	["union"] = "%s telah bergabung dengan hantunya!",
	["eliminated"] = "%s telah dieliminasi.",
	["won"] = "%s telah menang balap ini!",
	["falsestart"] = "Awalan Palsu",
	["countdown"] = "Balap dalam %d detik!",
	["2min"] = "Diperlukan dua pemain untuk balap klasik!",
	["noplayers"] = "Tidak ada pemain yang berbalap, mode tidak terbatas tidak akan mulai!",
	["nojoin"] = "Balap telah ditutup - pemain baru tidak dapat bergabung.",
	["allfalse"] = "Awalan semua pemain telah dipalsukan!",
	["safety"] = "Level tower telah diubah, balap ini tidak akan mulai.",
	["leader"] = "%s telah merebut takhtanya!",
	["toolate"] = "Tidak ada yang meraih level paling atas tepat waktu!",

}

module.localfeedback = {

	["cancel"] = "Sebelum itu, batalkan mantra yang lain dulu!",
	["nomana"] = "Tidak cukup mana!",
	["notokens"] = "Tidak cukup token!",
	["unlocked"] = "Mantra telah dibuka!",
	["maxmana"] = "Mana kamu sedang dalam jumlah maksimal!",
	["nopurchase"] = "Kamu tidak perlu beli mana dalam tutorial!",
	["hascham"] = "Kamu sudah memiliki gamepass Chameleon!",
	["hasspectre"] = "Kamu sudah memiliki gamepass Spectre!",
	["hasmana"] = "Kamu sudah memiliki gamepass 'Penyimpanan Lebih Besar'!",
	["nomuggle"] = "Ada kok mantra pokok yang dirahasiakan untuk Muggle, tapi boong!",
	["nocham"] = "Ada kok mantra pokok yang dirahasiakan untuk Chameleon, tapi boong!",
	["nonone"] = "Ada kok mantra pokok yang dirahasiakan secara sia-sia, tapi boong!",
	["nounlocks"] = "Bukalah semua mantra dasar untuk mengakses mantra pokok!",
	["onetoken"] = "Kamu telah diberikan satu token mantra oleh %s, sedekah anak soleh!",
	["moretokens"] = "Kamu telah diberikan beberapa token mantra oleh %s, rezeki menumpuk nih!",
	["music"] = "Musik telah berhasil diganti.",
	["nomusic"] = "Musik telah gagal untuk dimuat.",
	--this is teleport to other tower
	["noteleport"] = "Teleport gagal!", 
	["norefresh"] = "Kamu tidak dapat refresh.",

}

module.switchon = {

	["JOKER"] = "Kamu sekarang tidak akan menunjukkan tangga tidak terlihat.",
	["WICKED"] = "Kamu sekarang tidak akan mengaktifkan Wicked Rig yang berada di bawah.",
	["KEEPER"] = "Kamu sekarang tidak akan mengaktifkan Keeper Rig yang berada di bawah.",
	["SPECTRE"] = "Kamu sekarang tidak akan mengaktifkan Spectre Rig yang berada di bawah.",
	["HACKER"] = "Kamu sekarang tidak akan mengaktifkan Hacker Rig yang berada di bawah.",
	["ARCHON"] = "Hanya portal ke atas yang akan teleport kamu sekarang.",
	["DRIFTER"] = "Kamu sekarang tidak akan mengaktifkan Drifter Rig yang berada di bawah.",

}

module.switchoff = {

	["JOKER"] = "Kamu sekarang akan menunjukkan tangga tidak terlihat.",
	["WICKED"] = "Kamu sekarang akan mengaktifkan Wicked Rig yang berada di bawah.",
	["KEEPER"] = "Kamu sekarang akan mengaktifkan Keeper Rig yang berada di bawah.",
	["SPECTRE"] = "Kamu sekarang akan mengaktifkan Spectre Rig yang berada di bawah.",
	["HACKER"] = "Kamu sekarang akan mengaktifkan Hacker Rig yang berada di bawah.",
	["ARCHON"] = "Semua portal kecuali ke bawah akan teleport kamu sekarang.",
	["DRIFTER"] = "Kamu sekarang akan mengaktifkan Driftwr Rig yang berada di bawah.",
}

module.events = {
	["patronrigevent"] = "PATRON RIG SEDANG BERLANGSUNG",
	["patronevent"] = "OVERLOAD TANGGA SEDANG BERLANGSUNG",
	["patronaltevent"] = "EVENT PENCIUTAN",
	["jokerrigevent"] = "JOKER RIG SEDANG BERLANGSUNG",
	["jokeraltevent"] = "EVENT PEMBALIKAN",
	["jokerevent"] = "EVENT PENYELUBUNGAN",
	["wickedrigevent"] = "WICKED RIG SEDANG BERLANGSUNG",
	["wickedaltevent"] = "EVENT PENGHANCURAN TOTAL",
	["wickedevent"] = "EVENT PENGHANCURAN NORMAL",
	["keeperrigevent"] = "KEEPER RIG SEDANG BERLANGSUNG",
	["keeperevent"] = "EVENT PEROMBAKAN ULANG",
	["keeperaltevent"] = "EVENT PEMULIHAN",
	["spectrerigevent"] = "SPECTRE RIG SEDANG BERLANGSUNG",
	["spectreevent"] = "EVENT IMAJINASI",
	["spectrealtevent"] = "EVENT PENGHANTUAN",
	["hackerrigevent"] = "HACKER RIG SEDANG BERLANGSUNG",
	["hackerevent"] = "EVENT ESKALASI",
	["hackeraltevent"] = "EVENT ESKALASI MENAIK",
	["thiefrigevent"] = "THIEF RIG SEDANG BERLANGSUNG",
	["thiefevent"] = "EVENT BUMI DATAR",
	["thiefaltevent"] = "EVENT JALAN PINTAS",
	["hereticrigevent"] = "HERETIC RIG SEDANG BERLANGSUNG",
	["hereticevent"] = "EVENT REFRAKSI",
	["hereticaltevent"] = "EVENT PENGUTUKAN",
	["archonrigevent"] = "ARCHON RIG SEDANG BERLANGSUNG",
	["archonevent"] = "EVENT PORTAL",
	["archonaltevent"] = "EVENT PORTAL KE ATAS",
	["drifterevent"] = "EVENT PEMUTARAN",
	["drifteraltevent"] = "EVENT PENGANGKATAN",
	["drifterrigevent"] = "DRIFTER RIG SEDANG BERLANGSUNG",
	["chameleonrigevent"] = "CHAMELEON RIG SEDANG BERLANGSUNG",

}

module.finished = {

	["patronrigevent"] = "PATRON RIG SELESAI",
	["patronevent"] = "OVERLOAD TANGGA SELESAI",
	["patronaltevent"] = "EVENT PENCIUTAN SELESAI",
	["jokerrigevent"] = "JOKER RIG SELESAI",
	["jokeraltevent"] = "EVENT PEMBALIKAN TANGGA SELESAI",
	["jokerevent"] = "EVENT PENYELUBUNGAN SELESAI",
	["wickedrigevent"] = "WICKED RIG SELESAI",
	["wickedaltevent"] = "EVENT PENGHANCURAN TOTAL SELESAI",
	["wickedevent"] = "EVENT PENGHANCURAN NORMAL SELESAI",
	["keeperrigevent"] = "KEEPER RIG SELESAI",
	["keeperevent"] = "EVENT PEROMBAKAN ULANG SELESAI",
	["keeperaltevent"] = "EVENT PEMULIHAN SELESAI",
	["spectrerigevent"] = "SPECTRE RIG SELESAI",
	["spectreevent"] = "EVENT IMAJINASI SELESAI",
	["spectrealtevent"] = "EVENT PENGHANTUAN SELESAI",
	["hackerrigevent"] = "HACKER RIG SELESAI",
	["hackerevent"] = "EVENT ESKALASI SELESAI",
	["hackeraltevent"] = "EVENT ESKALASI MENAIK SELESAI",
	["thiefrigevent"] = "THIEF RIG SELESAI",
	["thiefevent"] = "EVENT BUMI DATAR SELESAI",
	["thiefaltevent"] = "EVENT JALAN PINTAS SELESAI",
	["hereticrigevent"] = "HERETIC RIG SELESAI",
	["hereticevent"] = "EVENT REFRAKSI SELESAI",
	["hereticaltevent"] = "EVENT PENGUTUKAN SELESAI",
	["archonrigevent"] = "ARCHON RIG SELESAI",
	["archonevent"] = "EVENT PORTAL SELESAI",
	["archonaltevent"] = "EVENT PORTAL KE ATAS SELESAI",
	["drifterevent"] = "EVENT PEMUTARAN SELESAI",
	["drifteraltevent"] = "EVENT PENGANGKATAN SELESAI",
	["drifterrigevent"] = "DRIFTER RIG SELESAI",
	["chameleonrigevent"] = "CHAMELEON RIG SELESAI",

}

module.timedspells = {
	["summoner"] = "%s telah melakukan mantra Pembuat!",
	["flipper"] = "%s telah melakukan mantra Pemutar!",
	["bender"] = "%s telah melakukan mantra Pembengkok!",
	["ascension"] = "%s telah melakukan mantra Kenaikan!",
	["traveller"] = "%s telah melakukan mantra Penjelajah!",
	["speedup"] = "%s telah melakukan mantra Usain Bolt!",
	["heist"] = "%s telah melakukan mantra Buffet Tangga!",
	["splitter"] = "%s telah melakukan mantra Buffet Portal!",
	["riser"] = "%s telah melakukan mantra Pembangkit!",
	["malediction"] = "%s telah melakukan mantra Kutukan!",

}

module.eventspells = {

	["patronrigevent"] = "%s telah membuat rig pada semua tangga normal dengan hadiah mana!",
	["patronaltevent"] = "%s telah menciut semua tangga normal!",
	["patronevent"] = "%s telah membuat overload tangga pada menara!",
	["jokeraltevent"] = "%s telah membalikkan semua tangga normal!",
	["jokerrigevent"] = "%s telah membuat rig pada semua tangga normal dengan mantra pembalikan!",
	["jokerevent"] = "%s telah menyelubungi semua tangga normal!",
	["wickedrigevent"] = "%s telah membuat rig pada semua tangga normal dengan mantra penghancuran!",
	["wickedaltevent"] = "%s telah menghancurkan SEMUA tangga!",
	["wickedevent"] = "%s telah menghancurkan semua tangga normal!",
	["keeperrigevent"] = "%s telah membuat rig pada semua tangga normal dengan mantra pemindahan acak!",
	["keeperevent"] = "%s telah memindahkan semua tangga normal secara acak!",
	["keeperaltevent"] = "%s telah memulihkan semua tangga terkutuk!",
	["spectrerigevent"] = "%s telah membuat rig pada semua tangga normal dengan kemungkinan penghantuan 50%!",
	["spectreevent"] = "%s telah mengimajinasi semua tangga normal!",
	["spectrealtevent"] = "%s telah menghantui semua tangga normal!",
	["hackerrigevent"] = "%s telah membuat rig pada semua tangga normal dengan mantra glitch!",
	["hackeraltevent"] = "%s telah membuat semua tangga normal menjadi eskalator menaik!",
	["thiefrigevent"] = "%s telah membuat rig pada semua tangga normal dengan pencurian mana!",
	["thiefevent"] = "%s telah mendatarkan semua tangga normal!",
	["thiefaltevent"] = "%s telah membuat jalan pintas pada semua tangga!",
	["newmode"] = "%s telah mengubah drone menjadi mode %s!",
	["archonrigevent"] = "%s telah membuat rig pada semua tangga normal dengan Archon Rig!",
	["archonevent"] = "%s telah membuat portal pada semua tangga normal secara acak!",
	["archonaltevent"] = "%s telah membuat portal vertikal pada semua tangga normal!",
	["drifterrigevent"] = "%s telah membuat rig pada semua tangga normal dengan Drifter Rig!",
	["drifteraltevent"] = "%s telah mengangkat semua tangga normal!",
	["hereticrigevent"] = "%s telah membuat rig pada semua tangga normal dengan Heretic Rig!",
	["hereticevent"] = "%s telah membuat refraksi pada semua tangga normal!",
	["hereticaltevent"] = "%s telah mengutuk semua tangga normal!",
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
	["chameleonrigevent"] = "%s telah membuat rig pada semua tangga normal dengan mantra misterius!"
}


--stuff that was wrong
module.gui.settings["rank"] = "Tunjukkan peringkat keseluruhanmu dalam papan avatar"
module.spells.descriptions["link"] = "Mantra ini membuat sebuah jembatan energi di anatara dua platform yang berlangsung selama 60 detik. Jembatan tidak dapat dilihat dari bawah. Naiklah ke peringkat Creator untuk memperpanjang waktunya menjadi 120 detik."
module.spells.descriptions["outdrift"] = "Mantra ini akan mengelilingi platform di bawah sekitar seluruh area permainan pada level yang sama. Mantra ini hanya dapat dilakukan pada platform luar."
module.spells.descriptions["indrift"] = "Mantra ini akan membuat sebuah papan selancar yang sementara, memindahkan kamu ke sebuah platform dalam arah yang telah ditentukan."
module.spells.descriptions["move"] = "Mantra ini akan memindahkan tangga secara horizontal, menghancurkan tangga yang berhalangan. Setelah melakukan mantra ini, panah akan muncul pada tangga, mengharuskan kamu untuk memilih arah. Tangga tidak dapat dipindah keluar dari area permainan. Naiklah ke peringkat Controller untuk memindahkan tangga yang terbalik."
module.spells.descriptions["rotate"] = "Mantra ini akan memutarkan tangga secara horizontal, menghancurkan tangga yang berhalangan. Setelah melakukan mantra ini, panah akan muncul pada tangga, mengharuskan kamu untuk memilih arah. Tangga tidak dapat diputar keluar dari area permainan. Naiklah ke peringkat Controller untuk memutar tangga yang terbalik."

--stuff that was missing
module.static["vr_5"] = "Gunakan thumbstick sebelah kiri untuk maju atau mundur. Memiringkan thumbstick ke sebelah akan membuatmu jalan ke kiri atau kanan sebagai gantinya."
module.gui.ranks["next"] = "Tekan pada panah kanan untuk mengecek syarat untuk peringkat berikutnya."
module.serverfeedback["admiral2"] = "Naiklah ke peringkat Admiral untuk memulihkan tangga yang terkutuk."
module.serverfeedback["annihilator"] = "Naiklah ke peringkat Annihilator untuk menghancurkan tangga terkutuk."
module.serverfeedback["disciple"] = "Naiklah ke peringkat Disciple untuk menghancurkan portal platform."
module.serverfeedback["toponly"] = "Mantra 'Panggil Orb' hanya dapat dilakukan pada level paling atas."
module.serverbroadcast["go"] = "MULAI!"
module.serverbroadcast["over"] = "Balap selesai!"
module.tutorial["tut_small_init"] = "Jump to spawn tutorial"

module.static["dailies"] = "REKOR HARI INI"
module.static["most_climbs"] = "PENDAKIAN TERBANYAK"
module.static["most_wins"] = "KEMENANGAN BALAP TERBANHAK" 

module.events["regen"] = "Tangga sedang diregenerasi"
module.finished["regen"] = "Regenerasi selesai"

module.spells.extras = {

	["Prompt"] = "Pilih sebuah mantra di bawah untuk belajar cara menggunakannya.",
	["Title1"] = "Mantra dasar",
	["Title2"] = "Mantra pokok yang unik",
	["Title3"] = "Mantra pokok yang dibagi",
	["ManaCost"] = "Biaya mana: %s", 
	["TokenCost"] = "Biaya token: %s", 
	["Special"] = "Syarat khusus: %s",
	["Execution"] = "Perwujudan: %s",
	["Description"] = "Deskripsi: %s",
	["basic"] = "Dasar",
	["ultimate"] = "Pokok",
	["unlock"] = "0 (3 untuk membuka)",
	["none"] = "Tidak ada syarat khusus.",
}

module.gui.basic.jumpdelay = "delay lompat"
module.gui.basic.dancetime = "SAATNYA BERJOGET!"

--mana bar and mana messages - those will appear on the mana bars
module.gui.mana = {

	["mana"] = "MANA", --main name
	["ghost"] = "HANTU",
	["spirit"] = "ARWAH", --only for spirit spectres
	["welcome"] = "WELCOME",
	["drones"] = "DRONE",
	["orb"] = "ORB",
	["refill"] = "ISI ULANG", --for all 2nd rank bonuses
	["overload"] = "OVERLOAD",
	["steal"] = "MENCURI",
	["gift"] = "HADIAH",
	["share"] = "DIBAGI",
	["prank"] = "PRANK",
	["possession"] = "KERASUKAN",
	["ritual"] = "RITUAL",
	["purge"] = "PENGHANCURAN",
	["blessing"] = "BERKAH",
	["hack"] = "RETAS",
	["stash"] = "SIMPANAN",
	["backdoor"] = "PINTU BELAKANG",
	["chamber"] = "RUANG",
	["base"] = "PANGKALAN",
	["circus"] = "SIRKUS",
	["shelter"] = "PERLINDUNGAN",
	["haven"] = "SURGA",
	["study"] = "TELAAH",
	["nether"] = "BAWAH TANAH",
	["guild"] = "PERSERIKATAN",
	["nexus"] = "PERHUBUNGAN",
	["oasis"] = "OASIS",
}

module.gui.hints = {
	["bcancel"] = "Tekan tombol B untuk membatalkan.", --xbox b
	["acancel"] = "Tekan lagi untuk membatalkan.",
	["ocancel"] = "Batalkan mantra lain terlebih dahulu.", 
}

module.gui.gameover.extras = {

	["noobs"] = "Tutorial hanya buat pemain cupu!",
	["possessed"] = "Heretic yang menyebalkan itu!",
	["new"] = "Peringkat baru dicapai - %s",
	["none1"] = "TUNGGU, APA?!",
	["none2"] = "Apakah permainan ini,",
	["none3"] = "punya mantra?"

}

module.gui.gameover.raceplacements = {
	"SELAMAT, KAMU TELAH MEMENANGKAN BALAP INI!",
	"PERINGKAT KE-2!",
	"PERINGKAT KE-3!",
	"Kamu telah mencapai peringkat ke-4.",
	"Kamu telah mencapai peringkat ke-5.",
	"Kamu telah mencapai peringkat ke-6.",
	"Kamu telah mencapai peringkat ke-7.",
	"Kamu telah mencapai peringkat ke-8.",
	"Kamu telah mencapai peringkat ke-9.",
	"Kamu telah mencapai peringkat ke-10.",
	"Kamu telah mencapai peringkat ke-11.",
	"Kamu telah mencapai peringkat ke-12. Semangat buat balap-balap berikutnya, semua orang bisa dapat peringkat tinggi karena pengalaman kok.",
}

return module

