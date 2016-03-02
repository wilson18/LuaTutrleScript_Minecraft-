digSquareSize=5
function refuel()
    if turtle.getFuelLevel() <10 then
        turtle.select(1)
        turtle.refuel(1)
    end
end
function goForward (digSquareSize)
    refuel()
    for i=1,digSquareSize,1 do
        while turtle.detect() do
            turtle.dig()
            turtle.attack()
        end
        turtle.forward()
    end
end
       
 
function digSquare (digSquareSize)
    jobs=true
    while jobs do
        goForward(digSquareSize)
        turtle.turnRight()
        digSquareSize=digSquareSize-1
 
        goForward(digSquareSize)
        turtle.turnRight()
       
        goForward(digSquareSize)
        turtle.turnRight()
 
        digSquareSize=digSquareSize-1
        goForward(digSquareSize)
        turtle.turnRight()
        if digSquareSize < 1 then
            jobs =false
        end
    end
end
 
function moveDown()
    if turtle.detectDown() then
        turtle.digDown()
    end
    turtle.down()
end
 
function back2base(digSquareSize)
    turtle.turnRight()
    turtle.turnRight()
    for i=1,digSquareSize/2,1 do
        turtle.forward()
    end
    turtle.turnRight()
    for i=1,digSquareSize/2,1 do
        turtle.forward()
    end
    turtle.turnLeft();
    turtle.forward()
    turtle.turnRight()
    turtle.turnRight()
end
digSquare (digSquareSize)
back2base(digSquareSize)
moveDown()
digSquare (digSquareSize)
back2base(digSquareSize)
moveDown()
digSquare (digSquareSize)
back2base(digSquareSize)