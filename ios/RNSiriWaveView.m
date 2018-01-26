
#import "RNSiriWaveView.h"

@implementation RNSiriWaveView

NSTimer *timer;

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

- (UIView *)view
{
    UIView *view = [[UIView alloc] init];
    return view;
}


RCT_CUSTOM_VIEW_PROPERTY(props, NSDictonary *, UIView)
{
    NSNumber *width = [json objectForKey: @"width"];
    NSNumber *height = [json objectForKey: @"height"];
    
    NSNumber *numberOfWaves = [json objectForKey: @"numberOfWaves"];
    NSString *backgroundColor = [json objectForKey: @"backgroundColor"];
    NSString *waveColor = [json objectForKey: @"waveColor"];
    
    NSNumber *primaryWaveLineWidth = [json objectForKey: @"primaryWaveLineWidth"];
    NSNumber *secondaryWaveLineWidth = [json objectForKey: @"secondaryWaveLineWidth"];
    
    NSNumber *frequency = [json objectForKey: @"frequency"];
    NSNumber *idleAmplitude = [json objectForKey: @"idleAmplitude"];
    NSNumber *amplitude = [json objectForKey: @"amplitude"];
    NSNumber *density = [json objectForKey: @"density"];
    NSNumber *phaseShift = [json objectForKey: @"phaseShift"];
    
    SCSiriWaveformView *siriWave = [[SCSiriWaveformView alloc] initWithFrame: CGRectMake(0, 0, [width intValue], [height intValue])];
    siriWave.numberOfWaves = [numberOfWaves floatValue];
    siriWave.backgroundColor = [RNSiriWaveView colorFromHexCode: backgroundColor];
    siriWave.waveColor = [RNSiriWaveView colorFromHexCode: waveColor];
    siriWave.primaryWaveLineWidth = [primaryWaveLineWidth floatValue];
    siriWave.secondaryWaveLineWidth = [secondaryWaveLineWidth floatValue];
    siriWave.frequency = [frequency floatValue];
    siriWave.idleAmplitude = [idleAmplitude floatValue];
//    siriWave.amplitude = [amplitude floatValue];
    siriWave.density = [density floatValue];
    siriWave.phaseShift = [phaseShift floatValue];
    
    [view addSubview: siriWave];
}

RCT_CUSTOM_VIEW_PROPERTY(startAnimation, bool, UIView) {
    if ([json integerValue] == 1 && timer == NULL) {
        SCSiriWaveformView *siriWave = [[view subviews] objectAtIndex: 0];
        
        // Timer
        timer = [NSTimer scheduledTimerWithTimeInterval: 0.02
                                         target:self
                                       selector: @selector(targetMethod:)
                                       userInfo: siriWave
                                        repeats:YES];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(stopAnimation, bool, UIView) {
    if ([json integerValue] == 1) {
        [timer invalidate];
        timer = NULL;
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
  
