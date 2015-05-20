# Description:
#   Cool Faces are the coolest
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot coolface - Grab a coolface

module.exports = (robot) ->

  robot.respond /coolface/i, (msg) ->
    msg.http("http://cool-face.herokuapp.com/")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).face


