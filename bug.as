function checkCollision(obj1:MovieClip, obj2:MovieClip):Boolean {
  if (obj1.hitTestObject(obj2)) {
    return true; // Collision detected
  } else {
    return false; // No collision
  }
}

// ... in another part of the code ...

if (checkCollision(mySprite, enemySprite)) {
  trace("Collision!");
}

//The problem is that if the object is too small and moves too fast it can skip frames and the collision might never be detected.