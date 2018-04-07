CHAIN
IF~AreaCheck("cvelm3") GlobalLT("ToBaneHunt","Global",2) !InParty(Myself)~ THEN ToDrizzt Notcome
~The people who rescued me, I greet you once more.~
=~I am preparing for a little adventure at the moment but you may find me here at a later time and we may have a longer conversation by then.~
=~Excuse me for now, my friends.~EXIT

CHAIN
IF~AreaCheck("cvelm3") GlobalGT("ToBaneHunt","Global",1) !InParty(Myself) Global("Tryonce","cvelm3",0)~ THEN ToDrizzt Maycome
~The people who rescued me, I greet you once more.~
==ToLini~Greetings, Drizzt. I have mentioned your recent adventures to my friends and we have come to talk to you.~
==TODrizzt~Am I famous already on the surface? I rather stay incognito if I could.~
==ToPellig~Your secret is safe with us. Fellow adventurers have a way to recognise and find each other.~
==TODrizzt~Is this going to be some kind of invitation. I can see that one of your former comrades no longer travels with you.~
==ToAdon~The keen eye of the ranger. Yes, Drizzt, we lost Kelemvor fighting the renegade gods who stole the tablets of fate.~
==ToDrizzt~I heard rumours about those heroic adventurers who pursue those deities. So it is you. A dangerous but necessary undertaking. Your intention is to invite me to join and my answer is *yes*.~
END
++~The keen eye of the ranger, indeed. Welcome to the party, Drizzt.~DO~ JoinParty()~EXIT
++~You are a bit too willing to join us, drow. I do not make choices so easily.~+ MaycomeH

CHAIN
IF~~THEN ToDrizzt MaycomeH
~You best make up your minds among yourself before you disturb others. Good day.~DO~SetGlobal("Tryonce","cvelm3",1)~EXIT

CHAIN
IF~AreaCheck("cvelm3") GlobalGT("ToBaneHunt","Global",1) !InParty(Myself) Global("Tryonce","cvelm3",1)~ THEN ToDrizzt Maycome
~You again?~
END
++~Sorry, we will not molest you further.~EXIT
++~I apologize for my earlier indecisiveness. I have come back to accept your offer to join us.~DO~ JoinParty()~EXIT

CHAIN
IF~Global("ToDrizIn","LOCALS",1)~THEN ToDrizzt Lini1
~So it was you, Liriel Baenre, who recommended me to the party?~
DO~SetGlobal("ToDrizIn","LOCALS",2)~
==ToLini~It was not so much a recommendation but a reminder. Your name speaks for itself already and I passed through Waterdeep on the way to meet our friends. I knew Kelemvor would not be there, and when I saw you entering the temple I thought you would fit in well with us.~
==ToDrizzt~You stayed in Undermountain with Eilistraee's followers?~
==ToLini~I am as far away from drow customs as you are, Drizzt. Somehow I had expected to meet you at Eilistraee's enclave sooner or later.~
==ToDrizzt~I avoid the presence of my kin when I can. This is not meant as an offence against you however. I never before had a conversation with a drow female resembling our present talk.~
==ToLini~I understand your life in the Underdark was even more stressful than mine. I suggest that while we travel together with Midnight we try to forget our race as it is of no importance in this company.~
==ToDrizzt~You know we cannot forget who we are - but I understand what you mean. We need to look at each other unprejudiced and forget about the relationship a drow male and a drow female would establish under similar conditions.~
==ToLini~(Laughs) Exactly. Let us try it.~EXIT

CHAIN
IF~Global("ToDrizIn","LOCALS",3)~THEN ToDrizzt Midni1
~The man Kelemvor who travelled with you before me, he meant something special to you?~
DO~SetGlobal("ToDrizIn","LOCALS",4)~
==CVSan25J~He was the man I loved. I was the woman he loved. In our surfacer's manner. This was a long time ago, Drizzt, we do not have your extended lifespan.~
==ToDrizzt~I learned that already. You relationship with Cyric today is different from a drow female's exchange of her deceased partner.~
==CVSan25J~We human females do not just *replace* gone lovers with the next. It is a complex thing...matters of the heart always are - for us. Cyric and me is a very individual story, not easily understandable even for humans.~
==ToDrizzt~I understand that I may not understand these things, at least not yet. The advantage for a drow is that he has more time to learn than you have.~
END
++~Maybe it is a good thing that you no longer adventure alone. Learning is easier in company like ours.~EXIT
++~Since your wit is sharp and your eyes are keen, travelling with friends will make it easy for you to acquaint yourself with the surface.~EXIT

CHAIN
IF~Global("ToMidDriz","LOCALS",1)~THEN ToDrizzt Midni2
~(Drizzt hesitates for a moment before he decides to speak.)~
DO~SetGlobal("ToMidDriz","LOCALS",2)~
=~Maybe I know too little yet of human ways, Midnight, but...is Cyric still the man you decided to share yourself with?~
==CVSan25J~The keen eye of the drow ranger once again - actually, Drizzt, I do not know it any more...~
=~The heart is a stubborn thing, at least mine. Cyric is the father of my son, and he is the man who reshaped my life when it was falling apart.~
==ToDrizzt~The Cyric I see is a man fuelled by ambition and a slave of his sword.~
==CVSan25J~A slave of his sword?~
==ToDrizzt~Look at Twinkle and Icingdeath, my swords. They serve me and I possess them.~
=~Cyric calls his sword Godsbane and it seems to possess him. It seems to be the source of his ambitions to become a god. And he wants you to become a goddess due to Mystra's death. Is this what you want?~
END
++~It may not be what I want - it may be what I need to become. Mystra is dead and the Weave needs a keeper pretty soon. I may not have a choice, even if I wanted.~+ Midni3
++~My choice has nothing to do with Cyric. I have the duty to serve my goddess and the Weave. I hope you can understand this, Drizzt.~+ Midni3
++~Is there jealousy in your words, Drizzt. I am aware that you may have developed some feeling for me. But it cannot be - I can neither be yours nor Cyric's in a short while. I will need to serve the Weave.~+ Midni3

CHAIN
IF~~THEN ToDrizzt Midni3
~(Sigh) I was afraid you would say that. This is something that I can understand regardless of my origin. It is something I can accept.~
=~If ever anything may change, I know that you know there will be a man waiting for you.~
END
++~I know it. It is a good thing to know, just like it is good to know that a dark elf's lifespan can be quite long.~EXIT