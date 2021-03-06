stage = new createjs.Stage "table"
stage.enableDOMEvents true

# Table
table = new createjs.Container()
table.x = 150
table.y = 150

ground = new createjs.Shape()
ground.graphics.beginFill("#2988d8").drawRect 0, 0, 3000, 2000
ground.cache 0, 0, 3000, 2000
table.addChild ground

# Zones
zone01 = new createjs.Shape()
zone01.graphics.f("#68c745").s("#0000000").ss(5, "round") # Green
zone01.graphics.r 0, 400, 400, 378
zone01.graphics.r 0, 400+378+444, 400, 378
zone01.graphics.f("#fdfc01") # Yellow
zone01.graphics.r 0, 400+378, 400, 444
zone01.graphics.es().rr 0, 800, 650, 400, 200
zone01.graphics.s("#0000000").ss(5, "round").r 0, 400+378, 400, 22
zone01.graphics.s("#0000000").ss(5, "round").r 0, 400+378+422, 400, 22
zone01.graphics.s("#0000000").ss(5, "round").r 70, 400+400, 22, 400
zone01.graphics.s("#0000000").ss(5, "round").r 0, 400+400+200-35, 70, 70
zone01.graphics.s("#0000000").ss(5, "round").dc 35, 400+400+200, 35 / 2
table.addChild zone01

zone02 = new createjs.Shape()
zone02.graphics.f("#fdfc01").s("#0000000").ss(5, "round") # Yellow
zone02.graphics.r 3000-400, 400, 400, 378
zone02.graphics.r 3000-400, 400+378+444, 400, 378
zone02.graphics.f("#68c745") # Green
zone02.graphics.r 3000-400, 400+378, 400, 444
zone02.graphics.es().rr 3000-650, 800, 650, 400, 200
zone02.graphics.s("#0000000").ss(5, "round").r 3000-400, 400+378, 400, 22
zone02.graphics.s("#0000000").ss(5, "round").r 3000-400, 400+378+422, 400, 22
zone02.graphics.s("#0000000").ss(5, "round").r 3000-70-22, 400+400, 22, 400
zone02.graphics.s("#0000000").ss(5, "round").r 3000-70, 400+400+200-35, 70, 70
zone02.graphics.s("#0000000").ss(5, "round").dc 3000-35, 400+400+200, 35 / 2
table.addChild zone02

# Carpet
carpet = new createjs.Shape()
carpet.graphics.f("#f50508").s("#0000000").ss(10, "round")
carpet.graphics.rr (3000-1180)/2, 820, 1180, 500, -90
carpet.graphics.rr (3000-800)/2, 2000-200, 800, 500, 100

carpet.cache 0, 0, 3000, 2000
table.addChild carpet

# Grid
gridDisplay = true
grid = new createjs.Shape()
table.addChild grid
for i in [0..20]
  grid.graphics.beginStroke("rgba(0, 0, 0, 0.1)").setStrokeStyle(10, "round").moveTo(0, i * 100).lineTo 3000, i * 100
for i in [0..30]
  grid.graphics.beginStroke("rgba(0, 0, 0, 0.1)").setStrokeStyle(10, "round").moveTo(i * 100, 0).lineTo i * 100, 2000
for i in [0..4]
  grid.graphics.beginStroke("rgba(0, 0, 0, 0.3)").setStrokeStyle(10, "round").moveTo(0, i * 500).lineTo 3000, i * 500
for i in [0..6]
  grid.graphics.beginStroke("rgba(0, 0, 0, 0.3)").setStrokeStyle(10, "round").moveTo(i * 500, 0).lineTo i * 500, 2000

grid.cache 0, 0, 3000, 2000

# Stairs
stairs = new createjs.Shape()
stairs.graphics.f("#d8dabd").r 967, 0, 1066, 580

stairs.graphics.s("#000000").ss(5, "round")
stairs.graphics.r 967+22, 580-70, 2011-967-22, 70
stairs.graphics.r 967+22, 580-70*2, 2011-967-22, 70
stairs.graphics.r 967+22, 580-70*3, 2011-967-22, 70
stairs.graphics.r 967+22, 580-70*4, 2011-967-22, 70

stairs.graphics.f("#fdfc01") # Yellow
stairs.graphics.r 967+22, 22, (2011-967-22)/2, 580-70*4-22
stairs.graphics.r 967+22+100, 580-70*4, (2011-967-22-400)/2, 70*4

stairs.graphics.f("#68c745") # Green
stairs.graphics.r 967+500+22*2, 22, (2011-967-22)/2, 580-70*4-22
stairs.graphics.r 967+500+22*2+100, 580-70*4, (2011-967-22-400)/2, 70*4

stairs.graphics.f("#d8dabd").s("#000000").ss(5, "round")
stairs.graphics.r 967, 0, 22, 580
stairs.graphics.r 2011, 0, 22, 580
stairs.graphics.r 967+22, 0, 2011-967-22, 22
stairs.graphics.f("#d8dabd").s("#000000").ss(5, "round")
stairs.graphics.r 967+22+500, 0, 22, 580

stairs.cache 967, 0, 1066, 580

table.addChild stairs

# Cinemas

# TorchsStand
torchStand = new createjs.Shape()
torchStand.graphics.f("#f50508").s("#0000000").ss(5, "round")
torchStand.graphics.r 1200, 2000-100, 600, 100
torchStand.graphics.f("#fdfc01").s("#0000000").ss(5, "round")
torchStand.graphics.dc 1250, 2000-50, 35 / 2
torchStand.graphics.f("#fdfc01").s("#0000000").ss(5, "round")
torchStand.graphics.dc 1200 + 600 - 50, 2000-50, 35 / 2

torchStand.cache 1200, 2000-100, 600, 100

table.addChild torchStand

# Torchs
torchsList = [
  {color: "#fdfc01", x: 90, y: 200}
  {color: "#fdfc01", x: 850, y: 100}
  {color: "#fdfc01", x: 850, y: 200}
  {color: "#fdfc01", x: 870, y: 1355}
  {color: "#fdfc01", x: 90, y: 1750}
  {color: "#fdfc01", x: 90, y: 1850}
  {color: "#fdfc01", x: 1300, y: 1400}
  {color: "#fdfc01", x: 1100, y: 1770}

  {color: "#68c745", x: 2910, y: 200}
  {color: "#68c745", x: 2150, y: 100}
  {color: "#68c745", x: 2150, y: 200}
  {color: "#68c745", x: 2130, y: 1355}
  {color: "#68c745", x: 2910, y: 1750}
  {color: "#68c745", x: 2910, y: 1850}
  {color: "#68c745", x: 1700, y: 1400}
  {color: "#68c745", x: 1900, y: 1770}
]

torchs = new createjs.Shape()
for torch in torchsList
  torchs.graphics.f(torch.color).s("#0000000").ss(5, "round").dc torch.x, torch.y, 60 / 2
  torchs.graphics.f(torch.color).s("#0000000").ss(5, "round").dc torch.x, torch.y, 35 / 2

torchs.cache 0, 0, 3000, 2000
table.addChild torchs

# Popcorns
popcornsList = [
  {x: 910, y: 830}
  {x: 2090, y: 830}
  {x: 1500, y: 1650}
  {x: 250, y: 1750}
  {x: 2750, y: 1750}
]
popcorns = new createjs.Shape()
for popcorn in popcornsList
  popcorns.graphics.f("rgba(255, 255, 255, .7)").dc popcorn.x, popcorn.y, 95 / 2
  popcorns.graphics.f("rgba(255, 255, 255, .7)").dc popcorn.x, popcorn.y, 54 / 2

popcorns.cache 0, 0, 3000, 2000
table.addChild popcorns

# Claps
clapsList = [
  {color: "#fdfc01", x: 400-160, y: 2000}
  {color: "#68c745", x: 700-160, y: 2000}
  {color: "#fdfc01", x: 1000-160, y: 2000}

  {color: "#68c745", x: 2000, y: 2000}
  {color: "#fdfc01", x: 2300, y: 2000}
  {color: "#68c745", x: 2600, y: 2000}
]

claps = new createjs.Shape()
for clap, i in clapsList
  claps.graphics.f(clap.color).s("#0000000").ss(5, "round").r clap.x, clap.y, 160, 30
  if i < 3
    claps.graphics.f("rgba(0, 0, 0, 0.2)").s("#0000000").ss(5, "round").r clap.x, clap.y, 30, 30
  else
    claps.graphics.f("rgba(0, 0, 0, 0.2)").s("#0000000").ss(5, "round").r clap.x+130, clap.y, 30, 30

claps.cache 0, 2000, 3000, 2030
table.addChild claps

# Distributors
distributorsList = [
  {x: 300, y: 0}
  {x: 600, y: 0}
  {x: 2400, y: 0}
  {x: 2700, y: 0}
]

distributors = new createjs.Shape()
for distributor in distributorsList
  distributors.graphics.f("#f50508").s("#0000000").ss(5, "round")
  distributors.graphics.r distributor.x - 35, distributor.y, 70, 70
  distributors.graphics.f("#f50508").s("#0000000").ss(5, "round")
  distributors.graphics.dc distributor.x, distributor.y + 35, 22

distributors.cache 0, 0, 3000, 70
table.addChild distributors

table.cache -200, -200, 3400, 2400

# Path stroke
path = new createjs.Shape()
table.addChild path
oldX = ""
oldY = ""

# Missile
robotContainer = new createjs.Container()

missile = new createjs.Shape()
robotContainer.addChild missile

# Robot
robot = new createjs.Shape()
robot.graphics.beginRadialGradientFill(["#ffe225","#d1b91f"], [0, 1], 0, 0, 0, 0, 0, 150).drawCircle 0, 0, 90
robot.graphics.beginFill("black").drawRect -40, -120, 80, 40
robot.rotation = 180
robotContainer.addChild robot

# Click DOM event
stage.on "click", (event) ->
# Write action into `script` div
  x = event.stageY - table.y
  y = event.stageX - table.x - 1500
  alpha = Math.abs (360 - robotContainer.rotation) % 360
  $("#script").append "robot.goto(" + x + ", " + y + ", (pi/180)*" + alpha + ", autocolor = True)<br>"

  # Draw path
  if oldX
    path.graphics.beginStroke("red").setStrokeStyle(15, "round").moveTo(oldX, oldY).lineTo event.stageX - table.x, event.stageY - table.y
    path.graphics.beginStroke("rgba(255, 0, 0, 0.3)").setStrokeStyle(180, "round").moveTo(oldX, oldY).lineTo event.stageX - table.x, event.stageY - table.y
    do stage.update

  oldX = event.stageX - table.x
  oldY = event.stageY - table.y

  do table.updateCache

# Ticker
createjs.Ticker.addEventListener "tick", (event) ->
# Missile
  if missile?
    missile.y += 30

  # Display position
  $("[data-ui=y]").text Math.round(stage.mouseX - table.x - 1500)
  $("[data-ui=x]").text Math.round(stage.mouseY - table.y)

  # Update position of robot
  robotContainer.x = stage.mouseX
  robotContainer.y = stage.mouseY

  # Update all sprite
  do stage.update

createjs.Ticker.setFPS 60

# Keyboard
document.onkeydown = (event) ->
  switch event.keyCode
    when 37 # Left arrow
      robotContainer.rotation -= 10
    when 39 # Right arrow
      robotContainer.rotation += 10
    when 32 # Space
  # Draw a missile
      missile.graphics.beginFill("white").drawCircle 10, 10, 20
      missile.x = 0
      missile.y = 0
    when 13 # Enter
      $("#script").text ""
      do path.graphics.clear
      oldX = false
      do table.updateCache
    when 71 # G as grid
      if gridDisplay
        grid.alpha = 0
      else
        grid.alpha = 1
      gridDisplay = !gridDisplay
      do table.updateCache

  # Display
  alpha = Math.abs (360 - robotContainer.rotation) % 360
  $("[data-ui=alpha]").text alpha
  do stage.update

# Add all to stage
stage.addChild table
stage.addChild robotContainer
do stage.update
