package androidx.leanback.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class SpeechOrbView extends SearchOrbView {

    /* renamed from: C, reason: collision with root package name */
    public final float f6729C;

    /* renamed from: D, reason: collision with root package name */
    public e1 f6730D;

    /* renamed from: E, reason: collision with root package name */
    public e1 f6731E;

    /* renamed from: F, reason: collision with root package name */
    public int f6732F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f6733G;

    public SpeechOrbView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.leanback.widget.SearchOrbView
    public int getLayoutResourceId() {
        return androidx.leanback.R.layout.lb_speech_orb;
    }

    public void setListeningOrbColors(e1 e1Var) {
        this.f6730D = e1Var;
    }

    public void setNotListeningOrbColors(e1 e1Var) {
        this.f6731E = e1Var;
    }

    public void setSoundLevel(int i2) {
        if (this.f6733G) {
            int i7 = this.f6732F;
            if (i2 > i7) {
                this.f6732F = b.c.c(i2, i7, 2, i7);
            } else {
                this.f6732F = (int) (i7 * 0.7f);
            }
            float focusedZoom = (((this.f6729C - getFocusedZoom()) * this.f6732F) / 100.0f) + 1.0f;
            View view = this.f6700f;
            view.setScaleX(focusedZoom);
            view.setScaleY(focusedZoom);
        }
    }

    public void showListening() {
        setOrbColors(this.f6730D);
        setOrbIcon(getResources().getDrawable(androidx.leanback.R.drawable.lb_ic_search_mic));
        a(true);
        enableOrbColorAnimation(false);
        View view = this.f6700f;
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        this.f6732F = 0;
        this.f6733G = true;
    }

    public void showNotListening() {
        setOrbColors(this.f6731E);
        setOrbIcon(getResources().getDrawable(androidx.leanback.R.drawable.lb_ic_search_mic_out));
        a(hasFocus());
        View view = this.f6700f;
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        this.f6733G = false;
    }

    public SpeechOrbView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f6732F = 0;
        this.f6733G = false;
        Resources resources = context.getResources();
        this.f6729C = resources.getFraction(androidx.leanback.R.fraction.lb_search_bar_speech_orb_max_level_zoom, 1, 1);
        this.f6731E = new e1(resources.getColor(androidx.leanback.R.color.lb_speech_orb_not_recording), resources.getColor(androidx.leanback.R.color.lb_speech_orb_not_recording_pulsed), resources.getColor(androidx.leanback.R.color.lb_speech_orb_not_recording_icon));
        this.f6730D = new e1(resources.getColor(androidx.leanback.R.color.lb_speech_orb_recording), resources.getColor(androidx.leanback.R.color.lb_speech_orb_recording), 0);
        showNotListening();
    }
}
