package K4;

import flix.com.vision.bvp.BetterVideoPlayer;

/* loaded from: classes2.dex */
public final class j implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f1797b;

    public j(BetterVideoPlayer betterVideoPlayer) {
        this.f1797b = betterVideoPlayer;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1797b.hideControls();
    }
}
