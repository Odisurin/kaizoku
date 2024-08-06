/datum/voicepack/female/abyssariad/get_sound(soundin, modifiers)
	var/used
	switch(modifiers)
		if("old")
			used = getfold(soundin)
		if("young")
			used = getfyoung(soundin)
		if("silenced")
			used = getfsilenced(soundin)
	if(!used)
		switch(soundin)
			if("breathgasp")
				used = list('sound/vo/female/elf/breathgasp (1).ogg','sound/vo/female/elf/breathgasp (2).ogg')
			if("fatigue")
				used = 'sound/vo/female/abyssariad/fatigue.ogg'
			if("firescream")
				used = list('sound/vo/female/abyssariad/painscream1.ogg','sound/vo/female/abyssariad/painscream2.ogg')
			if("gasp")
				used = list('sound/vo/female/abyssariad/gasp.ogg','sound/vo/female/abyssariad/gasp2.ogg','sound/vo/female/abyssariad/gasp3.ogg','sound/vo/female/abyssariad/gasp4.ogg','sound/vo/female/abyssariad/gasp5.ogg')
			if("huh")
				used = list('sound/vo/female/abyssariad/huh.ogg','sound/vo/female/abyssariad/huh1.ogg','sound/vo/female/abyssariad/huh2.ogg')
			if("jump")
				used = list('sound/vo/female/abyssariad/jump1.ogg','sound/vo/female/abyssariad/jump2.ogg','sound/vo/female/abyssariad/jump3.ogg','sound/vo/female/abyssariad/jump4.ogg','sound/vo/female/abyssariad/jump5.ogg',)
			if("jump")
				used = list('sound/vo/female/abyssariad/laugh.ogg','sound/vo/female/abyssariad/laugh1.ogg','sound/vo/female/abyssariad/laugh3.ogg','sound/vo/female/abyssariad/laugh4.ogg','sound/vo/female/abyssariad/laugh5.ogg',)
			if("groan")
				used = list('sound/vo/female/abyssariad/groan.ogg','sound/vo/female/abyssariad/DISAPPOINTMENT.ogg','sound/vo/female/abyssariad/ah.ogg')
			if("haltyell")
				used = 'sound/vo/female/elf/haltyell.ogg'
			if("hmm")
				used = list('sound/vo/female/elf/hmm (1).ogg','sound/vo/female/elf/hmm (2).ogg')
			if("pain")
				used = list('sound/vo/female/abyssariad/painl1.ogg','sound/vo/female/abyssariad/painl2.ogg','sound/vo/female/abyssariad/painl3.ogg','sound/vo/female/abyssariad/painl4.ogg')
			if("embed")
				used = list('sound/vo/female/elf/pain (1).ogg','sound/vo/female/elf/pain (2).ogg','sound/vo/female/elf/pain (3).ogg','sound/vo/female/elf/pain (4).ogg')
			if("paincrit")
				used = 'sound/vo/female/elf/paincrit.ogg'
			if("painscream")
				used = list('sound/vo/female/elf/painscream (1).ogg','sound/vo/female/elf/painscream (2).ogg')
			if("scream")
				used = list('sound/vo/female/elf/scream (1).ogg','sound/vo/female/elf/scream (2).ogg','sound/vo/female/elf/scream (3).ogg','sound/vo/female/elf/scream (4).ogg')
			if("praise")
				used = list('sound/vo/male/abyssariad/abyssariad_praise.ogg','sound/vo/male/abyssariad/abyssariad_praise2.ogg')
			if("yoo")
				used = 'sound/vo/male/abyssariad/yoooo.ogg'
			if("throatsing")
				used = list('sound/vo/female/abyssariad/fthroatsing1.ogg','sound/vo/female/abyssariad/fthroatsing2.ogg','sound/vo/female/abyssariad/fthroatsing3.ogg','sound/vo/female/abyssariad/fthroatsing4.ogg')
	if(!used) //we haven't found a racial specific sound so use generic
		used = ..(soundin)
	return used