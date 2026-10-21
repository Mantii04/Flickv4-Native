package A4;

import android.os.Handler;
import android.os.Looper;
import androidx.media3.exoplayer.ExoPlayer;
import flix.com.vision.activities.leanback.SlideshowActivity;
import flix.com.vision.models.Movie;
import m4.InterfaceC1330i;

/* loaded from: classes2.dex */
public final class B implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Movie f52a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SlideshowActivity f53b;

    public B(SlideshowActivity slideshowActivity, Movie movie) {
        this.f53b = slideshowActivity;
        this.f52a = movie;
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
        SlideshowActivity slideshowActivity = this.f53b;
        slideshowActivity.f15505f.setAlpha(0.0f);
        slideshowActivity.f15503b.setVisibility(0);
        slideshowActivity.f15503b.setText(this.f52a.getTitle());
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        int i2 = SlideshowActivity.f15502v;
        SlideshowActivity slideshowActivity = this.f53b;
        slideshowActivity.getClass();
        new Handler(Looper.getMainLooper()).postDelayed(new t(slideshowActivity, 0), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        slideshowActivity.f15503b.setText("");
        slideshowActivity.f15503b.setVisibility(8);
    }
}
