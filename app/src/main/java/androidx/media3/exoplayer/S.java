package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.MediaSourceList;

/* loaded from: classes.dex */
public final /* synthetic */ class S implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7217b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaSourceList.ForwardingEventListener f7218e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Pair f7219f;

    public /* synthetic */ S(MediaSourceList.ForwardingEventListener forwardingEventListener, Pair pair, int i2) {
        this.f7217b = i2;
        this.f7218e = forwardingEventListener;
        this.f7219f = pair;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7217b) {
            case 0:
                this.f7218e.lambda$onDrmKeysRemoved$10(this.f7219f);
                break;
            case 1:
                this.f7218e.lambda$onDrmKeysRestored$9(this.f7219f);
                break;
            default:
                this.f7218e.lambda$onDrmSessionReleased$11(this.f7219f);
                break;
        }
    }
}
