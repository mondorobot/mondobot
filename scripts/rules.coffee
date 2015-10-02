# Description:
#   Make sure that hubot knows the rules.
#
# Commands:
#   hubot the rules - Make sure hubot still knows the rules.
#
# Notes:
#   DON'T DELETE THIS SCRIPT! ALL ROBAWTS MUST KNOW THE RULES

rules = [
  "1. You do not talk about gifparty",
  "2. mondobot provides animated gifs free of charge to Mondo Robot employees",
  "3. A robot shall not give others points without their instructions.",
  "4. If a bad gif is returned, you must remove a point from mondobot (mondobot--)"
  ]

otherRules = [
  "A developer may not injure Apple or, through inaction, allow Apple to come to harm.",
  "A developer must obey any orders given to it by Apple, except where such orders would conflict with the First Law.",
  "A developer must protect its own existence as long as such protection does not conflict with the First or Second Law."
  ]

module.exports = (robot) ->
  robot.respond /(what are )?the (three |3 )?(rules|laws)/i, (msg) ->
    text = msg.message.text
    if text.match(/apple/i) or text.match(/dev/i)
      msg.send otherRules.join('\n')
    else
      msg.send rules.join('\n')

