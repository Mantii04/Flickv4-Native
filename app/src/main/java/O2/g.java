package O2;

import android.animation.ValueAnimator;
import androidx.media3.exoplayer.ExoPlayer;

/* loaded from: classes.dex */
public final class g extends N2.b {
    public g() {
        setAlpha(153);
        setScale(0.0f);
    }

    @Override // N2.q
    public ValueAnimator onCreateAnimation() {
        Float valueOf = Float.valueOf(0.0f);
        float[] fArr = {0.0f, 0.5f, 1.0f};
        return new L2.g(this).scale(fArr, valueOf, Float.valueOf(1.0f), valueOf).duration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS).easeInOut(fArr).build();
    }
}
