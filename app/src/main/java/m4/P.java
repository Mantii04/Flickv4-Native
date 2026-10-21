package m4;

import android.os.HandlerThread;
import android.os.Looper;

/* loaded from: classes2.dex */
public final class P {

    /* renamed from: a, reason: collision with root package name */
    public final C1342v f18643a;

    /* renamed from: b, reason: collision with root package name */
    public final O f18644b;

    /* renamed from: c, reason: collision with root package name */
    public long f18645c;

    /* renamed from: d, reason: collision with root package name */
    public long f18646d;

    /* renamed from: e, reason: collision with root package name */
    public long f18647e;

    /* renamed from: f, reason: collision with root package name */
    public long f18648f;

    /* renamed from: g, reason: collision with root package name */
    public long f18649g;

    /* renamed from: h, reason: collision with root package name */
    public long f18650h;

    /* renamed from: i, reason: collision with root package name */
    public long f18651i;

    /* renamed from: j, reason: collision with root package name */
    public long f18652j;

    /* renamed from: k, reason: collision with root package name */
    public int f18653k;

    /* renamed from: l, reason: collision with root package name */
    public int f18654l;

    /* renamed from: m, reason: collision with root package name */
    public int f18655m;

    public P(C1342v c1342v) {
        this.f18643a = c1342v;
        HandlerThread handlerThread = new HandlerThread("Picasso-Stats", 10);
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        StringBuilder sb = W.f18670a;
        T t6 = new T(looper);
        t6.sendMessageDelayed(t6.obtainMessage(), 1000L);
        this.f18644b = new O(handlerThread.getLooper(), this);
    }

    public final Q a() {
        C1342v c1342v = this.f18643a;
        return new Q(c1342v.maxSize(), c1342v.size(), this.f18645c, this.f18646d, this.f18647e, this.f18648f, this.f18649g, this.f18650h, this.f18651i, this.f18652j, this.f18653k, this.f18654l, this.f18655m, System.currentTimeMillis());
    }
}
