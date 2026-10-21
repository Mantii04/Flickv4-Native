package a6;

import W5.G;
import W5.J;

/* loaded from: classes2.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final int f4827a;

    /* renamed from: b, reason: collision with root package name */
    public static final G f4828b;

    /* renamed from: c, reason: collision with root package name */
    public static final G f4829c;

    /* renamed from: d, reason: collision with root package name */
    public static final G f4830d;

    /* renamed from: e, reason: collision with root package name */
    public static final G f4831e;

    /* renamed from: f, reason: collision with root package name */
    public static final int f4832f;

    static {
        int systemProp$default;
        int systemProp$default2;
        systemProp$default = J.systemProp$default("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, (Object) null);
        f4827a = systemProp$default;
        f4828b = new G("PERMIT");
        f4829c = new G("TAKEN");
        f4830d = new G("BROKEN");
        f4831e = new G("CANCELLED");
        systemProp$default2 = J.systemProp$default("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, (Object) null);
        f4832f = systemProp$default2;
    }

    public static final e access$createSegment(long j7, e eVar) {
        return new e(j7, eVar, 0);
    }
}
