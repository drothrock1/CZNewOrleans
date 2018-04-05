//
//  PageTwelveViewController.h
//  CocktailZenNewOrleans
//
//  Created by Diane on 9/21/14.
//
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface PageTwelveViewController : UIViewController <AVAudioPlayerDelegate>
{
	UIScrollView *scrollView;
	UIColor *defaultTintColor;
	
	UIView *slideUpView;
	
	AVAudioPlayer *player;
	UIButton *playButton;
	UISlider *progressBar;
	UILabel *currentTime;
	UILabel *duration;
	NSTimer	*updateTimer;
	
	BOOL stopAudioOverride;
}

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) AVAudioPlayer	*player;
@property (nonatomic, retain) UIButton *playButton;
@property (nonatomic, retain) UISlider *progressBar;
@property (nonatomic, retain) UILabel *currentTime;
@property (nonatomic, retain) UILabel *duration;

- (IBAction)photoTapped:(id)sender;

@end

