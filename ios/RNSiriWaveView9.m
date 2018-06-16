
#import "RNSiriWaveView9.h"

@implementation RNSiriWaveView9

NSTimer *waveTimer9;

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

- (UIView *)view {
    PXSiriWave *siriWave = [[PXSiriWave alloc] init];
    waveTimer9 = NULL;

    return siriWave;
}

RCT_CUSTOM_VIEW_PROPERTY(size, NSDictonary *, PXSiriWave) {
    NSNumber *width = [json objectForKey: @"width"];
    NSNumber *height = [json objectForKey: @"height"];
    
    view.frame = CGRectMake(0, 0, [width intValue], [height intValue]);
    [view configure];
    [view setNeedsDisplay];
}

RCT_CUSTOM_VIEW_PROPERTY(colors, NSArray *, PXSiriWave) {
    NSMutableArray *mutableColors = [[NSMutableArray alloc] init];
    for (NSString *color in json) {
        [mutableColors addObject:[RNSiriWaveView9 colorFromHexCode: color]];
    }

    view.colors = mutableColors;
}


RCT_CUSTOM_VIEW_PROPERTY(frequency, NSNumber *, PXSiriWave) {
    view.frequency = [json floatValue];
}

RCT_CUSTOM_VIEW_PROPERTY(amplitude, NSNumber *, PXSiriWave) {
    view.amplitude = [json floatValue];
}

RCT_CUSTOM_VIEW_PROPERTY(startAnimation, bool, PXSiriWave) {
    if ([json integerValue] == 1 && waveTimer9 == NULL) {
        PXSiriWave *siriWave = view;
        
        if (siriWave != nil) {
            // Timer
            waveTimer9 = [NSTimer scheduledTimerWithTimeInterval: 0.02
                                                     target:self
                                                   selector: @selector(targetMethod:)
                                                   userInfo: siriWave
                                                    repeats:YES];
        }
    }
}

RCT_CUSTOM_VIEW_PROPERTY(stopAnimation, bool, PXSiriWave) {
    if ([json integerValue] == 1 && waveTimer9 != NULL) {
        [waveTimer9 invalidate];
        waveTimer9 = NULL;
    }
}

-(void)targetMethod:(NSTimer *)timer9  {
    PXSiriWave *siriWave = [timer9 userInfo];
    
    [siriWave updateWithLevel: [self _normalizedPowerLevelFromDecibels: .1]];
}

- (CGFloat)_normalizedPowerLevelFromDecibels:(CGFloat)decibels {
    if (decibels < -60.0f || decibels == 0.0f) {
        return 0.0f;
    }
    
    return powf((powf(10.0f, 0.05f * decibels) - powf(10.0f, 0.05f * -60.0f)) * (1.0f / (1.0f - powf(10.0f, 0.05f * -60.0f))), 1.0f / 2.0f);
}


+ (UIColor *) colorFromHexCode:(NSString *)hexString {
    NSString *cleanString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if([cleanString length] == 3) {
        cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                       [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)],
                       [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)],
                       [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
    }
    if([cleanString length] == 6) {
        cleanString = [cleanString stringByAppendingString:@"ff"];
    }
    
    unsigned int baseValue;
    [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
    
    float red = ((baseValue >> 24) & 0xFF)/255.0f;
    float green = ((baseValue >> 16) & 0xFF)/255.0f;
    float blue = ((baseValue >> 8) & 0xFF)/255.0f;
    float alpha = ((baseValue >> 0) & 0xFF)/255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}


@end

