package flix.com.vision.bvp.subtitle;

import L4.d;
import android.content.Context;
import android.media.MediaPlayer;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes2.dex */
public class CaptionsView2 extends AppCompatTextView implements Runnable {
    public CaptionsView2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        postDelayed(this, 300L);
        setShadowLayer(6.0f, 6.0f, 6.0f, -16777216);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        postDelayed(this, 50L);
    }

    public void setPlayer(MediaPlayer mediaPlayer) {
    }

    public void setCaptionsViewLoadListener(d dVar) {
    }
}
