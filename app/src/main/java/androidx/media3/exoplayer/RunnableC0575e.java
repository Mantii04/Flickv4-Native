package androidx.media3.exoplayer;

import android.content.Context;
import androidx.media3.exoplayer.DefaultSuitableOutputChecker;
import androidx.media3.exoplayer.ExoPlayerImplInternal;

/* renamed from: androidx.media3.exoplayer.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0575e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7381b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7382e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7383f;

    public /* synthetic */ RunnableC0575e(int i2, Object obj, Object obj2) {
        this.f7381b = i2;
        this.f7383f = obj;
        this.f7382e = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7381b) {
            case 0:
                ((DefaultSuitableOutputChecker.ImplApi23) this.f7383f).lambda$enable$1((Context) this.f7382e);
                break;
            case 1:
                ((DefaultSuitableOutputChecker.ImplApi35) this.f7383f).lambda$enable$1((Context) this.f7382e);
                break;
            case 2:
                ((ExoPlayerImpl) this.f7383f).lambda$new$1((ExoPlayerImplInternal.PlaybackInfoUpdate) this.f7382e);
                break;
            default:
                ((ExoPlayerImplInternal) this.f7383f).lambda$sendMessageToTargetThread$3((PlayerMessage) this.f7382e);
                break;
        }
    }
}
