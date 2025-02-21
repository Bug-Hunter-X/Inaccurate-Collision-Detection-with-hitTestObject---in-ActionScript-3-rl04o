function checkCollision(obj1:MovieClip, obj2:MovieClip):Boolean {
  // Expand bounding boxes for better collision detection
  var obj1Bounds:Rectangle = obj1.getBounds(obj1.parent);
  var obj2Bounds:Rectangle = obj2.getBounds(obj2.parent);
  obj1Bounds.inflate(5, 5); // Adjust inflation value as needed
  obj2Bounds.inflate(5, 5);

  if (obj1Bounds.intersects(obj2Bounds)) {
    return true; // Collision detected
  } else {
    return false; // No collision
  }
}

// ... in another part of the code ...

if (checkCollision(mySprite, enemySprite)) {
  trace("Collision!");
}

// This solution uses getBounds() to create rectangles around the objects and uses intersects to detect the collision. Inflating the bounding boxes increases the sensitivity of collision detection, helping to catch fast-moving small objects.