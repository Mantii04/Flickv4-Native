package K4;

import flix.com.vision.bvp.BetterVideoPlayer2;

/* loaded from: classes2.dex */
public final class v implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer2 f1815b;

    public v(BetterVideoPlayer2 betterVideoPlayer2) {
        this.f1815b = betterVideoPlayer2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1815b.hideControls();
    }
}
