//
//  CommonService.m
//  MagicWindowShow
//
//  Created by 刘家飞 on 16/2/19.
//  Copyright © 2016年 cafei. All rights reserved.
//

#import "CommonService.h"

#define KEY_FIRST_LAUCH             @"key_first_lauch"
#define KEY_LVYOU_FIRST_LAUCH       @"key_lvyou_first_lauch"
#define KEY_DIANSHANG_FIRST_LAUCH   @"key_dianshang_first_lauch"
#define KEY_USER_NAME               @"key_user_name"

@implementation CommonService

- (BOOL)isFirstLauch
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    id firstObj = [defaults objectForKey:KEY_FIRST_LAUCH];
    if (firstObj == nil)
    {
        [defaults setBool:NO forKey:KEY_FIRST_LAUCH];
        return YES;
    }
    else
    {
        return NO;
    }
}

- (BOOL)isLvyouFirstLauch
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    id firstObj = [defaults objectForKey:KEY_LVYOU_FIRST_LAUCH];
    if (firstObj == nil)
    {
        [defaults setBool:NO forKey:KEY_LVYOU_FIRST_LAUCH];
        return YES;
    }
    else
    {
        return NO;
    }
}

- (BOOL)isDianshangFirstLauch
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    id firstObj = [defaults objectForKey:KEY_DIANSHANG_FIRST_LAUCH];
    if (firstObj == nil)
    {
        [defaults setBool:NO forKey:KEY_DIANSHANG_FIRST_LAUCH];
        return YES;
    }
    else
    {
        return NO;
    }
}

- (void)saveUserName:(NSString *)userName
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (userName != nil && userName.length > 0)
    {
        [defaults setObject:userName forKey:KEY_USER_NAME];
    }
    else
    {
        [defaults removeObjectForKey:KEY_USER_NAME];
    }
}

- (BOOL)hasLogin
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults objectForKey:KEY_USER_NAME] != nil)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

@end
