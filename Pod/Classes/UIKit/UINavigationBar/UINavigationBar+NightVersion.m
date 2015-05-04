//
//  UINavigationBar+NightVersion.m
//  UINavigationBar+NightVersion
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and 
//  test it. And finally open a pull request.

#import "UINavigationBar+NightVersion.h"
#import "DKNightVersionManager.h"
#import "UIView+NightVersion.h"

#import "UINavigationBar+Animation.h"

@implementation UINavigationBar (NightVersion)

#pragma mark - ChangeColor

- (void)changeColor {
    
    [self animateNavigationBarToColor:([DKNightVersionManager currentThemeVersion] == DKThemeVersionNight) ? self.nightBarTintColor : self.normalBarTintColor duration:DKNightVersionAnimationDuration];
    
    [UIView animateWithDuration:DKNightVersionAnimationDuration animations:^{
        
        [self setBackgroundColor:([DKNightVersionManager currentThemeVersion] == DKThemeVersionNight) ? self.nightBackgroundColor : self.normalBackgroundColor];
        
        [self setTintColor:([DKNightVersionManager currentThemeVersion] == DKThemeVersionNight) ? self.nightTintColor : self.normalTintColor];
        
    }];
}

@end
