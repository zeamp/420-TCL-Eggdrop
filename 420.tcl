# 420.tcl v1.0 by zeamp @zeampzpvy
# https://twitter.com/zeampzpvy
#
# This Eggdrop bot script bestows random wisdom when a user types the
# public command !420 into the channel.
# Inspired by #r.trees (LiberaChat) IRC channel "toke bot" Z.
#
set xmsg {
 {Pack your weed, charge your vape, re-fill your tank! Get ready for a channel-wide toke session.}
 {PUFF! PUFF! *cough*}
 {Just like weed, you make everything better! Now let's smoke!}
 {You look like a Linux user. Are you sure you want to hit this?}
 {Fire it up!}
 {It's 420 somewhere, am I right?}
 {I can't feel my face.}
 {You look like an Android user. Are you sure you want to hit this?}
 {Get ready for a toke-out blackout. Puff, puff, pass...}
 {Sweeeeeet, like candy.}
 {And a very merry 420 to you, too!}
 {SMOKE WEED EVERYDAY}
 {3...2...1... SMOKE SESSION IS NOW IN SEASON.}
 {Smoking my way to the top.}
 {Doobie doobie do... Oh, let's go!}
 {A puff a day keeps the debauched attitude away..}
 {You look like an iPhone user. Are you sure you want to hit this?}
 {Support legalization! It's toke-up time.}
 {Is a group of squid called a squad?}
 {Don't forget the air freshener.}
 {PUFF. PUFF. PASS.}
 {Will Cheech and/or Chong, report to the front desk.}
 {420 BLAZE IT!}
 {How did you know? LET'S GET IT!}
 {You look like a Windows user. Are you sure you want to hit this?}
 {Dave, is that you...?}
 {Did you do your shirt laundry today?}
 {YOU ARE FREAKING OUT, MAAAAAAAAAAAAAAAAAAN}
 {Alcohol kills. Weed chills.}
}
# You can change the public channel command here. -ze
bind pub - !420 pub:420
proc pub:420 { nick uhost handle channel arg } {
global xmsg
set toke [lindex $xmsg [rand [llength $xmsg]]]
# Send the message to the channel. -ze
putserv "PRIVMSG $channel :$toke"
}
putlog "420.tcl by zeamp has been loaded."
