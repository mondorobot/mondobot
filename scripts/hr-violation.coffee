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
 "You will be suspended without pay without being suspended, %",
 "Don't be a jackass, %",
 "Sigh.. another violation %? You're going to the shit house",
 "Do it again %, and you'll be sleeping with the hobos in the back",
 "%'s desk will now be moved into Chris' office",
 "The kitchen sink is not for that, %",
 "%'s circle K rights have been revoked",
 "% is now in charge of cleaning up Edna's shit",
 "Everyone point and laugh at %",
 "% thinks they are funny, but everyone else thinks they are a jackass, you jackass."
]

timesheets = [
  "http://imgbin.org/images/19648.gif",
  "http://oldhatcreative.com/sites/default/files/blog_images/TEMP-Image_2_9.gif",
  "http://s3.amazonaws.com/christmas_gif_shop/gifs/11/shelf/cliffgif_lowres.gif?1323786687"
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
  robot.hear /(timesheets)/i, (msg) ->
    msg.send msg.random timesheets
