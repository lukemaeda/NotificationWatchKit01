//
//  InterfaceController.m
//  NotificationWatchKit02 WatchKit Extension
//
//  Created by MAEDAHAJIME on 2015/04/30.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "InterfaceController.h"
#import "NotificationController.h"


@interface InterfaceController()
@property (strong, nonatomic) IBOutlet WKInterfaceImage *fireImage;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *fireLabel;

@end


@implementation InterfaceController

- (void)handleActionWithIdentifier:(NSString *)identifier forLocalNotification:(NSDictionary *)localNotification
{
    
    if ([identifier isEqualToString:@"firstButtonAction"]) {
        // 花火場所画像表示
        [self.fireLabel setText:@"淀川花火大会"];
        [self.fireImage setImageNamed:@"img01"];
        
        
    } else if ([identifier isEqualToString:@"secondButtonAction"]) {
        // 花火情報画像表示
        [self.fireLabel setText:@"花火名：千輪"];
        [self.fireImage setImageNamed:@"img02"];
    }

}

- (void)handleActionWithIdentifier:(NSString *)identifier forRemoteNotification:(NSDictionary *)remoteNotification
{
        
    if ([identifier isEqualToString:@"firstButtonAction"]) {
        // 花火場所画像表示
        [self.fireLabel setText:@"淀川花火大会"];
        [self.fireImage setImageNamed:@"img01"];
        
        
    } else if ([identifier isEqualToString:@"secondButtonAction"]) {
        // 花火情報画像表示
        [self.fireLabel setText:@"花火名：千輪"];
        [self.fireImage setImageNamed:@"img02"];
    }
    
}


//- (void)handleActionWithIdentifier:(NSString *)identifier
//             forRemoteNotification:(NSDictionary *)remoteNotification{
//    
//    NSArray* identifiersArr = @[@"firstButtonAction",@"secondButtonAction"];
//    
//    NSInteger tag = NSNotFound;
//    
//    if ([identifiersArr containsObject:identifier]) {
//        tag = [identifiersArr indexOfObject:identifier];
//    }
//    switch (tag) {
//        case 0:{
//            NSLog(@"firstButtonAction is taped");
//            
//            // 花火場所画像表示
//            [self.fireLabel setText:@"淀川花火大会"];
//            [self.fireImage setImageNamed:@"img01"];
//            break;
//        }
//        case 1:{
//            NSLog(@"secondButtonAction is taped");
//            
//            // 花火情報画像表示
//            [self.fireLabel setText:@"花火名：千輪"];
//            [self.fireImage setImageNamed:@"img02"];
//            break;
//        }
//        default:{
//            NSLog(@"未找到action 对应的 identifier：%@",identifier);
//            break;
//        }
//    }
//}


- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



