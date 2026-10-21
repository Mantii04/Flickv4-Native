package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioBecomingNoisyManager;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7066b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7067e;

    public /* synthetic */ a(Object obj, int i2) {
        this.f7066b = i2;
        this.f7067e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7066b) {
            case 0:
                ((AudioBecomingNoisyManager) this.f7067e).lambda$setEnabled$0();
                break;
            case 1:
                ((AudioBecomingNoisyManager) this.f7067e).lambda$setEnabled$1();
                break;
            default:
                ((AudioBecomingNoisyManager.AudioBecomingNoisyReceiver) this.f7067e).callListenerIfEnabled();
                break;
        }
    }
}
