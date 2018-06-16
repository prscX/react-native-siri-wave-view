package ui.siriwave;

import android.app.Activity;
import android.graphics.Color;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;

import com.alex.siriwaveview.SiriWaveView;
import com.facebook.react.uimanager.annotations.ReactProp;

/**
 * Created by user on 26/01/18.
 */

public class RNSiriWaveView extends ViewGroupManager<ViewGroup> {

    public static final String REACT_CLASS = "RNSiriWaveView";

    private ThemedReactContext context;
    private boolean animating = false;

    @Override
    public String getName() {
        return REACT_CLASS;
    }


    @Override
    protected FrameLayout createViewInstance(final ThemedReactContext reactContext) {
        context = reactContext;

        SiriWaveView siriWaveView = new SiriWaveView(reactContext);
        siriWaveView.init(context, null);

        FrameLayout frameLayout = new FrameLayout(reactContext.getCurrentActivity());
        frameLayout.addView(siriWaveView);

        return frameLayout;
    }

    @ReactProp(name = "size")
    public void setSize(FrameLayout frame, ReadableMap size) {
        int width = size.getInt("width");
        int height = size.getInt("height");
    }

    @ReactProp(name = "numberOfWaves")
    public void setNumberOfWaves(FrameLayout frame, int numberOfWaves) {
        SiriWaveView siriWaveView = (SiriWaveView) frame.getChildAt(0);
        siriWaveView.waveNumber = numberOfWaves;

        siriWaveView.init(context, null);
    }

    @ReactProp(name = "backgroundColor")
    public void setBackgroundColor(FrameLayout frame, String backgroundColor) {
        SiriWaveView siriWaveView = (SiriWaveView) frame.getChildAt(0);
    }

    @ReactProp(name = "waveColor")
    public void setWaveColor(FrameLayout frame, String waveColor) {
        SiriWaveView siriWaveView = (SiriWaveView) frame.getChildAt(0);
        siriWaveView.waveColor = Color.parseColor(waveColor);

        siriWaveView.init(context, null);
    }

    @ReactProp(name = "primaryWaveLineWidth")
    public void setPrimaryWaveLineWidth(FrameLayout frame, int primaryWaveLineWidth) {
        SiriWaveView siriWaveView = (SiriWaveView) frame.getChildAt(0);
        siriWaveView.waveHeight = primaryWaveLineWidth;

        siriWaveView.init(context, null);
    }

    @ReactProp(name = "secondaryWaveLineWidth")
    public void setSecondaryWaveLineWidth(FrameLayout frame, int secondaryWaveLineWidth) {

    }

    @ReactProp(name = "frequency")
    public void setFrequency(FrameLayout frame, int frequency) {
        SiriWaveView siriWaveView = (SiriWaveView) frame.getChildAt(0);
        siriWaveView.frequency = frequency;

        siriWaveView.init(context, null);
    }

    @ReactProp(name = "amplitude")
    public void setAmplitude(FrameLayout frame, int amplitude) {
        SiriWaveView siriWaveView = (SiriWaveView) frame.getChildAt(0);
        siriWaveView.amplitude = amplitude;

        siriWaveView.init(context, null);
    }

    @ReactProp(name = "startAnimation")
    public void setStartAnimation(FrameLayout SiriWaveViewFrame, boolean startAnimation) {
        SiriWaveView siriWaveView = (SiriWaveView) SiriWaveViewFrame.getChildAt(0);
        if (siriWaveView != null && animating == false && startAnimation) {
            animating = true;

            siriWaveView.init(context, null);
            siriWaveView.startAnimation();
        }
    }

    @ReactProp(name = "stopAnimation")
    public void setStopAnimation(FrameLayout SiriWaveViewFrame, boolean stopAnimation) {
        SiriWaveView siriWaveView = (SiriWaveView) SiriWaveViewFrame.getChildAt(0);
        if (siriWaveView != null && animating == true && stopAnimation) {
            animating = false;
            siriWaveView.stopAnimation();
        }
    }
}
