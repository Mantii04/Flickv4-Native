package f5;

import flix.com.vision.bvp.BetterVideoPlayer;

/* loaded from: classes2.dex */
public final class s implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f14408b;

    public s(BetterVideoPlayer betterVideoPlayer) {
        this.f14408b = betterVideoPlayer;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f14408b.start();
    }
}
