# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hr violate user_name
#
# Author:
#   jbavari

violation = [
 "% shall now be flashed by :kelly:",
 "The HR Department manager will be contacting %",
 "Oh so you think you're tough, %?",
 "You will be suspended without pay without being suspended, %"
]

module.exports = (robot) ->
  robot.hear /(hr violation) (.*)/i, (msg) ->
    violation_message = msg.random violation

    violator = () -> msg.match[2]

    violate_me = () -> msg.send violation_message.replace "%", msg.message.user.name
    violate_them = () -> msg.send violation_message.replace "%", msg.match[2]

    if msg.match[2] == 'me'
      violate_me()
    else
      violate_them()
