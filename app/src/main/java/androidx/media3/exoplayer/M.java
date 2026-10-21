package androidx.media3.exoplayer;

import Q3.C0248s;
import android.util.Pair;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.drm.KeyRequestInfo;
import androidx.media3.exoplayer.source.MediaSource;

/* loaded from: classes.dex */
public final /* synthetic */ class M implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7197b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7198e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7199f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f7200j;

    public /* synthetic */ M(Object obj, Object obj2, Object obj3, int i2) {
        this.f7197b = i2;
        this.f7198e = obj;
        this.f7199f = obj2;
        this.f7200j = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7197b) {
            case 0:
                ((MediaPeriodQueue) this.f7198e).lambda$notifyQueueUpdate$0((C0248s) this.f7199f, (MediaSource.MediaPeriodId) this.f7200j);
                break;
            case 1:
                ((MediaSourceList.ForwardingEventListener) this.f7198e).lambda$onDrmKeysLoaded$7((Pair) this.f7199f, (KeyRequestInfo) this.f7200j);
                break;
            default:
                ((MediaSourceList.ForwardingEventListener) this.f7198e).lambda$onDrmSessionManagerError$8((Pair) this.f7199f, (Exception) this.f7200j);
                break;
        }
    }
}
