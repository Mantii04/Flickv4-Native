package androidx.media3.common.util;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import io.hopmonsdk.service.MoneytiserService;
import java.io.Serializable;
import java.util.concurrent.CopyOnWriteArraySet;
import l1.C1205a;
import p5.C1504c;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7125b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f7126e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7127f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f7128j;

    public /* synthetic */ d(Object obj, int i2, Object obj2, int i7) {
        this.f7125b = i7;
        this.f7127f = obj;
        this.f7126e = i2;
        this.f7128j = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f7128j;
        int i2 = this.f7126e;
        Object obj2 = this.f7127f;
        switch (this.f7125b) {
            case 0:
                ListenerSet.lambda$queueEvent$0((CopyOnWriteArraySet) obj2, i2, (ListenerSet.Event) obj);
                break;
            case 1:
                ((DrmSessionEventListener.EventDispatcher) obj2).lambda$drmSessionAcquired$0((DrmSessionEventListener) obj, i2);
                break;
            case 2:
                ((C1205a) obj2).f18075c.onResultReceived(i2, (Serializable) obj);
                break;
            default:
                C1504c c1504c = (C1504c) obj2;
                c1504c.getClass();
                int i7 = MoneytiserService.f16795m;
                c1504c.f19508d.c(i2 + 1, (String) obj);
                break;
        }
    }

    public /* synthetic */ d(Object obj, Object obj2, int i2, int i7) {
        this.f7125b = i7;
        this.f7127f = obj;
        this.f7128j = obj2;
        this.f7126e = i2;
    }
}
