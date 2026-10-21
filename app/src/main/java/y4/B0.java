package y4;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.graphics.drawable.BitmapDrawable;
import androidx.media3.exoplayer.ExoPlayer;
import flix.com.vision.R;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import m4.InterfaceC1330i;

/* loaded from: classes2.dex */
public final class B0 implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivityLeanBack f21110a;

    public B0(MovieDetailActivityLeanBack movieDetailActivityLeanBack) {
        this.f21110a = movieDetailActivityLeanBack;
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21110a;
        movieDetailActivityLeanBack.f14894G0.invalidate();
        int darkVibrantColor = g1.g.from(((BitmapDrawable) movieDetailActivityLeanBack.f14894G0.getDrawable()).getBitmap()).generate().getDarkVibrantColor(0);
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(movieDetailActivityLeanBack.getResources().getColor(R.color.colorPrimary)), Integer.valueOf(darkVibrantColor));
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(movieDetailActivityLeanBack, 17));
        ofObject.start();
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
    }
}
