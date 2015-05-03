//
//  NotificationController.m
//  NotificationWatchKit02 WatchKit Extension
//
//  Created by MAEDAHAJIME on 2015/04/30.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "NotificationController.h"


@interface NotificationController()
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *bodyLabel;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *titleLabel;

@end


@implementation NotificationController

- (instancetype)init {
    self = [super init];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

// ローカル通知 NSDictionary型
- (void)didReceiveLocalNotification:(NSDictionary *)localNotification
                     withCompletion:(void (^)(WKUserNotificationInterfaceType))completionHandler {
    // このメソッドは、ローカル通知を提示する必要があるときに呼び出されます。
    // 動的通知インタフェースを使用する場合は、それを実装します。
    // 可能な限り迅速にあなたのダイナミックな通知インタフェースを移入//。
    //
    // ダイナミック通知インターフェイス呼び出し完了ブロックを移入した後。
    
    // 受け取ったリモート通知のJSONをデバック出力
    NSLog(@"%@", localNotification.description);
    
    /*
     * "aps": {
         "alert": {
            "body": "夏祭り！🎆",
            "title": "2015 花火大会情報！！"
     },
     */
    // JSON：aps
    NSDictionary* apsDict = [localNotification objectForKey:@"aps"];
    
    
    // JSON：alert
    NSDictionary* alertDict = [apsDict objectForKey:@"alert"];
    // "body": "夏祭り！🎆" 表示
    NSString* bodyString = [alertDict objectForKey:@"body"];
    
    // "title": "2015 花火夏祭り！！" 表示
    NSString* titleString = [alertDict objectForKey:@"title"];
    
    // "夏祭り！🎆" 表示
    [self.bodyLabel setText:bodyString];
    // "2015 花火夏祭り！！" 表示
    [self.titleLabel setText:titleString];
    
    NSLog(@"Notification Received ..");
    
    // 静的カスタム
    //completionHandler(WKUserNotificationInterfaceTypeDefault);
    // 動的カスタム
    completionHandler(WKUserNotificationInterfaceTypeCustom);

}


// リモート通知 NSDictionary型
- (void)didReceiveRemoteNotification:(NSDictionary *)remoteNotification
                      withCompletion:(void (^)(WKUserNotificationInterfaceType))completionHandler {
    // このメソッドは、リモート通知を提示する必要があるときに呼び出されます。
    // 動的通知インタフェースを使用する場合は、それを実装します。
    // 可能な限り迅速にあなたのダイナミックな通知インタフェースを移入//。
    //
    // ダイナミック通知インターフェイス呼び出し完了ブロックを移入した後
    // カスタム
    //completionHandler(WKUserNotificationInterfaceTypeCustom);
    
    // 静的な通知を表示するには、次の定数を使用します。
    
    // 受け取ったリモート通知のJSONをデバック出力
    NSLog(@"%@", remoteNotification.description);
    
    /*
     * "aps": {
        "alert": {
           "body": "夏祭り！🎆",
           "title": "2015 花火大会情報！！"
        },
    */
    // JSON：aps
    NSDictionary* apsDict = [remoteNotification objectForKey:@"aps"];

    
    // JSON：alert
    NSDictionary* alertDict = [apsDict objectForKey:@"alert"];
    // "body": "夏祭り！🎆" 表示
    NSString* bodyString = [alertDict objectForKey:@"body"];
    
    // "title": "2015 花火夏祭り！！" 表示
    NSString* titleString = [alertDict objectForKey:@"title"];
    
    //NSLog(@"body：%@ title：%@", bodyString, titleString);
    
    // "夏祭り！🎆" 表示
    [self.bodyLabel setText:bodyString];
    // "2015 花火夏祭り！！" 表示
    [self.titleLabel setText:titleString];

    // 静的カスタム
    //completionHandler(WKUserNotificationInterfaceTypeDefault);
    
    // 動的カスタム
    completionHandler(WKUserNotificationInterfaceTypeCustom);
}

@end



