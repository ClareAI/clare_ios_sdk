//
//  CLAppDelegate.m
//  Clare
//
//  Created by zekail on 01/14/2019.
//  Copyright (c) 2019 zekail. All rights reserved.
//

#import "CLAppDelegate.h"
#import <Clare/Clare.h>
#import <Clare/CLStyleSetting.h>

@implementation CLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[Clare sharedManager]initWithId:@"appid"];
    [[Clare sharedManager]setThemeColor:[UIColor colorWithRed:233.0/255.0 green:4.0/255.0 blue:5.0/255.0 alpha:1.0]];
    [[Clare sharedManager]setVoiceEnable:false];
    [[Clare sharedManager]setLanguageDetection:false];
    
    
    [[Clare sharedManager] setReplyButtonInOneRow:false];
    [[Clare sharedManager]setTitle:@"zh_HK" withTitle:@"Clare 聊天機械人"];
    [[Clare sharedManager]setTitle:@"en_US" withTitle:@"Clare Assistant"];
    
    [[Clare sharedManager]setDisclaimer:@"zh_HK" withDisclaimer:@[@"<span>• 虛擬助理是全自動化服務，因此無法回答有關您的帳戶資料的問題。<br>• 請勿在您的訊息中透露任何個人帳戶資料。<br></span>",@"<span>• 富達將儲存您在此提供的資料，以確保服務質素。<br>• 富達集團成員及獲授權第三方將處理及儲存資料，當中可能包括海外處理。<br>• 詳情請細閱<a href=\"https://www.fidelity.com.hk/investor/security-privacy?lang=zh\" target=\"_blank\">安全與私隱。</a></span>"]];
    [[Clare sharedManager]setDisclaimer:@"en_US" withDisclaimer:@[@"<span>• Virtual Assistant is an automated service, and therefore cannot answer questions specific to your account.<br>• Please do NOT disclose any personal account information in your messages.<br></span>",@"<span>• The information you input here will be recorded for service quality assurance.<br>• Data will be processed and stored by members of the Fidelity Group and authorised third parties, which may include processing overseas.<br>• For the details please read the <a href=\"https://www.fidelity.com.hk/investor/security-privacy\" target=\"_blank\">Security and Privacy</a> guidelines.</span>"]];
    [[Clare sharedManager]setLanguages:[[NSMutableArray alloc] initWithObjects:@"zh_HK",@"en_US", nil]];
    
    //for this time update
    [[Clare sharedManager]setWaterMark:@"hello"];
    
    CLStyleSetting * style = [[CLStyleSetting alloc]init];
    
    style.chatBgColor = [UIColor purpleColor];
    style.linkColor = [UIColor redColor];
    style.watermarkColor = [UIColor yellowColor];
    
    style.headerBarBgColor = [UIColor greenColor];
    style.headerBarFontColor = [UIColor blueColor];
    
    style.bubbleBgColor = [UIColor blueColor];
    style.bubbleBorder = true;
    style.bubbleFontColor = [UIColor brownColor];
    
    style.quickReplyButtonBgColor = [UIColor greenColor];
    style.quickReplyButtonBorder = true;
    style.quickReplyButtonFontColor = [UIColor blueColor];
    
    style.searchResultFontColor = [UIColor yellowColor];
    
    style.postbackBgColor = [UIColor yellowColor];
    style.postbackBorder = true;
    style.postbackFontColor = [UIColor grayColor];
    
    style.userBubbleBgColor = [UIColor greenColor];
    style.userBubbleBorder = true;
    style.userBubbleFontColor = [UIColor blueColor];
    
    [[Clare sharedManager]setStyle:style];
    //end
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
