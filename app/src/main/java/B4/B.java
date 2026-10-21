package B4;

import android.os.CountDownTimer;
import android.widget.ProgressBar;
import flix.com.vision.activities.player.SimpleVideoPlayer;

/* loaded from: classes2.dex */
public final class B extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ProgressBar f222a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f223b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B(SimpleVideoPlayer simpleVideoPlayer, ProgressBar progressBar) {
        super(25000L, 100L);
        this.f223b = simpleVideoPlayer;
        this.f222a = progressBar;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        this.f223b.r();
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j7) {
        ProgressBar progressBar = this.f222a;
        if (progressBar != null) {
            progressBar.setProgress((int) ((j7 / 25000.0f) * 100.0f));
        }
    }
}
