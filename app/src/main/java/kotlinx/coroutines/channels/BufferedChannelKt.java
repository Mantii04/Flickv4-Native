package kotlinx.coroutines.channels;

import H5.l;
import N5.e;
import R5.InterfaceC0285m;
import T5.k;
import W5.G;
import W5.J;

/* loaded from: classes2.dex */
public abstract class BufferedChannelKt {

    /* renamed from: a, reason: collision with root package name */
    public static final k f17504a = new k(-1, null, null, 0);

    /* renamed from: b, reason: collision with root package name */
    public static final int f17505b;

    /* renamed from: c, reason: collision with root package name */
    public static final int f17506c;

    /* renamed from: d, reason: collision with root package name */
    public static final G f17507d;

    /* renamed from: e, reason: collision with root package name */
    public static final G f17508e;

    /* renamed from: f, reason: collision with root package name */
    public static final G f17509f;

    /* renamed from: g, reason: collision with root package name */
    public static final G f17510g;

    /* renamed from: h, reason: collision with root package name */
    public static final G f17511h;

    /* renamed from: i, reason: collision with root package name */
    public static final G f17512i;

    /* renamed from: j, reason: collision with root package name */
    public static final G f17513j;

    /* renamed from: k, reason: collision with root package name */
    public static final G f17514k;

    /* renamed from: l, reason: collision with root package name */
    public static final G f17515l;

    /* renamed from: m, reason: collision with root package name */
    public static final G f17516m;

    /* renamed from: n, reason: collision with root package name */
    public static final G f17517n;

    /* renamed from: o, reason: collision with root package name */
    public static final G f17518o;

    /* renamed from: p, reason: collision with root package name */
    public static final G f17519p;

    /* renamed from: q, reason: collision with root package name */
    public static final G f17520q;

    /* renamed from: r, reason: collision with root package name */
    public static final G f17521r;

    /* renamed from: s, reason: collision with root package name */
    public static final G f17522s;

    static {
        int systemProp$default;
        int systemProp$default2;
        systemProp$default = J.systemProp$default("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, (Object) null);
        f17505b = systemProp$default;
        systemProp$default2 = J.systemProp$default("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, (Object) null);
        f17506c = systemProp$default2;
        f17507d = new G("BUFFERED");
        f17508e = new G("SHOULD_BUFFER");
        f17509f = new G("S_RESUMING_BY_RCV");
        f17510g = new G("RESUMING_BY_EB");
        f17511h = new G("POISONED");
        f17512i = new G("DONE_RCV");
        f17513j = new G("INTERRUPTED_SEND");
        f17514k = new G("INTERRUPTED_RCV");
        f17515l = new G("CHANNEL_CLOSED");
        f17516m = new G("SUSPEND");
        f17517n = new G("SUSPEND_NO_WAITER");
        f17518o = new G("FAILED");
        f17519p = new G("NO_RECEIVE_RESULT");
        f17520q = new G("CLOSE_HANDLER_CLOSED");
        f17521r = new G("CLOSE_HANDLER_INVOKED");
        f17522s = new G("NO_CLOSE_CAUSE");
    }

    public static final long access$constructEBCompletedAndPauseFlag(long j7, boolean z6) {
        return (z6 ? 4611686018427387904L : 0L) + j7;
    }

    public static final long access$constructSendersAndCloseStatus(long j7, int i2) {
        return (i2 << 60) + j7;
    }

    public static final k access$createSegment(long j7, k kVar) {
        return new k(j7, kVar, kVar.getChannel(), 0);
    }

    public static final long access$initialBufferEnd(int i2) {
        if (i2 == 0) {
            return 0L;
        }
        if (i2 != Integer.MAX_VALUE) {
            return i2;
        }
        return Long.MAX_VALUE;
    }

    public static final boolean access$tryResume0(InterfaceC0285m interfaceC0285m, Object obj, l lVar) {
        Object tryResume = interfaceC0285m.tryResume(obj, null, lVar);
        if (tryResume == null) {
            return false;
        }
        interfaceC0285m.completeResume(tryResume);
        return true;
    }

    public static final <E> e createSegmentFunction() {
        return BufferedChannelKt$createSegmentFunction$1.f17523b;
    }

    public static final G getCHANNEL_CLOSED() {
        return f17515l;
    }
}
