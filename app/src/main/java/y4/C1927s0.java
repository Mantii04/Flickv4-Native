package y4;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.graphics.drawable.BitmapDrawable;
import androidx.media3.exoplayer.ExoPlayer;
import flix.com.vision.R;
import flix.com.vision.activities.MovieDetailActivity;
import m4.InterfaceC1330i;

/* renamed from: y4.s0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1927s0 implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivity f21283a;

    public C1927s0(MovieDetailActivity movieDetailActivity) {
        this.f21283a = movieDetailActivity;
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        MovieDetailActivity movieDetailActivity = this.f21283a;
        movieDetailActivity.f14877y0.invalidate();
        int darkVibrantColor = g1.g.from(((BitmapDrawable) movieDetailActivity.f14877y0.getDrawable()).getBitmap()).generate().getDarkVibrantColor(0);
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(movieDetailActivity.getResources().getColor(R.color.colorPrimary)), Integer.valueOf(darkVibrantColor));
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(movieDetailActivity, 16));
        ofObject.start();
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
    }
}
