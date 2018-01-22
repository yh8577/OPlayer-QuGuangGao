#line 1 "/Users/huig/Desktop/OPlayer/OPlayer_Lite_Hook_Log/OPlayer_Lite_Hook_Log/OPlayer_Lite_Hook_Log.xm"

#import <UIKit/UIKit.h>


@interface PlayViewController : UIViewController

@property(retain, nonatomic) UIView *localAdView;
@property(retain, nonatomic) UIView *rootAdView;

@end

#include <logos/logos.h>
#include <substrate.h>
@class PlayViewController; 
static void (*_logos_orig$_ungrouped$PlayViewController$adViewDidReceiveAd$)(PlayViewController*, SEL, id); static void _logos_method$_ungrouped$PlayViewController$adViewDidReceiveAd$(PlayViewController*, SEL, id); static void (*_logos_orig$_ungrouped$PlayViewController$viewWillAppear$)(PlayViewController*, SEL, _Bool); static void _logos_method$_ungrouped$PlayViewController$viewWillAppear$(PlayViewController*, SEL, _Bool); 

#line 12 "/Users/huig/Desktop/OPlayer/OPlayer_Lite_Hook_Log/OPlayer_Lite_Hook_Log/OPlayer_Lite_Hook_Log.xm"


static void _logos_method$_ungrouped$PlayViewController$adViewDidReceiveAd$(PlayViewController* self, SEL _cmd, id arg1) {
    
    NSLog(@"-[<PlayViewController: %p> adViewDidReceiveAd:%@]", self, arg1);
    
    self.rootAdView = [[UIView alloc] initWithFrame:CGRectZero];

    _logos_orig$_ungrouped$PlayViewController$adViewDidReceiveAd$(self, _cmd, arg1);

}

static void _logos_method$_ungrouped$PlayViewController$viewWillAppear$(PlayViewController* self, SEL _cmd, _Bool arg1) {

    NSLog(@"-[<PlayViewController: %p> viewWillAppear:%d]", self, arg1);
    
    self.localAdView = [[UIView alloc] initWithFrame:CGRectZero];

    _logos_orig$_ungrouped$PlayViewController$viewWillAppear$(self, _cmd, arg1);

}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PlayViewController = objc_getClass("PlayViewController"); MSHookMessageEx(_logos_class$_ungrouped$PlayViewController, @selector(adViewDidReceiveAd:), (IMP)&_logos_method$_ungrouped$PlayViewController$adViewDidReceiveAd$, (IMP*)&_logos_orig$_ungrouped$PlayViewController$adViewDidReceiveAd$);MSHookMessageEx(_logos_class$_ungrouped$PlayViewController, @selector(viewWillAppear:), (IMP)&_logos_method$_ungrouped$PlayViewController$viewWillAppear$, (IMP*)&_logos_orig$_ungrouped$PlayViewController$viewWillAppear$);} }
#line 35 "/Users/huig/Desktop/OPlayer/OPlayer_Lite_Hook_Log/OPlayer_Lite_Hook_Log/OPlayer_Lite_Hook_Log.xm"
