execute at @e[tag=bank,limit=1] run tellraw @a[distance=..128] [{"text":"<Bank_2013> ","color":"green"},{"text":"IT'S TOO LATE NOW HAHAHHAHAHAH","color":"white"}]
schedule function bankboss:bankdeathtext2 2.5s
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1