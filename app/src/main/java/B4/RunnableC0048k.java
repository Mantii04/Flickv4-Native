package B4;

import flix.com.vision.bvp.BetterVideoPlayer;

/* renamed from: B4.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC0048k implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BetterVideoPlayer f269b;

    public RunnableC0048k(BetterVideoPlayer betterVideoPlayer) {
        this.f269b = betterVideoPlayer;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f269b.start();
    }
}
