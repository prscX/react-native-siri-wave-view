
#import "RNSiriWaveView.h"

@implementation RNSiriWaveView

NSTimer *waveTimer;

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

- (UIView *)view {
    SCSiriWaveformView *siriWave = [[SCSiriWaveformView alloc] init];
    waveTimer = NULL;

    return siriWave;
}

RCT_CUSTOM_VIEW_PROPERTY(size, NSDictonary *, SCSiriWaveformView) {
    NSNumber *width = [json objectForKey: @"width"];
    NSNumber *height = [json objectForKey: @"height"];

    view.frame = CGRectMake(0, 0, [width intValue], [height intValue]);
    [view setNeedsDisplay];
}

RCT_CUSTOM_VIEW_PROPERTY(numberOfWaves, NSNumber *, SCSiriWaveformView) {
    view.numberOfWaves = [json floatValue];
}

RCT_CUSTOM_VIEW_PROPERTY(backgroundColor, NSString *, SCSiriWaveformView) {
    view.backgroundColor = [RNSiriWaveView colorFromHexCode: json];
}

RCT_CUSTOM_VIEW_PROPERTY(waveColor, NSString *, SCSiriWaveformView) {
    view.waveColor = [RNSiriWaveView colorFromHexCode: json];
}

RCT_CUSTOM_VIEW_PROPERTY(primaryWaveLineWidth, NSNumber *, SCSiriWaveformView) {
    view.primaryWaveLineWidth = [json floatValue];
}

RCT_CUSTOM_VIEW_PROPERTY(secondaryWaveLineWidth, NSNumber *, SCSiriWaveformView) {
    view.secondaryWaveLineWidth = [json floatValue];
}

RCT_CUSTOM_VIEW_PROPERTY(frequency, NSNumber *, SCSiriWaveformView) {
    view.frequency = [json floatValue];
}

RCT_CUSTOM_VIEW_PROPERTY(amplitude, NSNumber *, SCSiriWaveformView) {
    view.idleAmplitude = [json floatValue];
}


RCT_CUSTOM_VIEW_PROPERTY(density, NSNumber *, SCSiriWaveformView) {
    view.density = [json floatValue];
}

RCT_CUSTOM_VIEW_PROPERTY(phaseShift, NSNumber *, SCSiriWaveformView) {
    view.phaseShift = [json floatValue];
}


RCT_CUSTOM_VIEW_PROPERTY(startAnimation, bool, SCSiriWaveformView) {
    if ([json integerValue] == 1 && waveTimer == NULL) {
        SCSiriWaveformView *siriWave = view;
        
        if (siriWave != nil) {
            // Timer
            waveTimer = [NSTimer scheduledTimerWithTimeInterval: 0.02
               target:self
               selector: @selector(targetMethod:)
               userInfo: siriWave
               repeats:YES];
        }
    }
}

RCT_CUSTOM_VIEW_PROPERTY(stopAnimation, bool, SCSiriWaveformView) {
    if ([json integerValue] == 1 && waveTimer != NULL) {
        [waveTimer invalidate];
        waveTimer = NULL;
    }
}

-(void)targetMethod:(NSTimer *)timer  {
    SCSiriWaveformView *siriWave = [timer userInfo];

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
  
