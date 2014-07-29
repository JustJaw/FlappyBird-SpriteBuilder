#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    
    //creates the character
    character = (Character*)[CCBReader load:@"Character"];
    
    //adds phyics to the character
    [physicsNode addChild:character];
    

    // your code here
}

-(void)update:(CCTime)delta
{
    // put update code here
    [character flap];
}

// put new methods here


-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    [character flap];
}

@end
