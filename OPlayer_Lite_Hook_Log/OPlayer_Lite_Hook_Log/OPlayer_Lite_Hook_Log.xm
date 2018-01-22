
#import <UIKit/UIKit.h>


@interface PlayViewController : UIViewController

@property(retain, nonatomic) UIView *localAdView;
@property(retain, nonatomic) UIView *rootAdView;

@end

%hook PlayViewController

- (void)adViewDidReceiveAd:(id)arg1 {
    
    %log;
    
    self.rootAdView = [[UIView alloc] initWithFrame:CGRectZero];

    %orig;

}

- (void)viewWillAppear:(_Bool)arg1 {

    %log;
    
    self.localAdView = [[UIView alloc] initWithFrame:CGRectZero];

    %orig;

}

%end
