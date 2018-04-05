//
//  Cocktail Zen
//
//  Created by Brad on 6/1/10.
//  Copyright 2010 __Rothrock Group, LLC__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : NSObject <UIApplicationDelegate>
{
    //   UIImage *resizeImage;
    UIWindow *window;
	UITabBarController *rootTabBarController;
	
}

//@property (nonatomic, retain) UIImage *resizeImage;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *rootTabBarController;

@end

