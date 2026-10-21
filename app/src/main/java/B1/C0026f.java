package B1;

import androidx.work.NetworkType;
import java.util.Set;
import v5.AbstractC1764B;

/* renamed from: B1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0026f {

    /* renamed from: i, reason: collision with root package name */
    public static final C0026f f170i;

    /* renamed from: a, reason: collision with root package name */
    public final NetworkType f171a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f172b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f173c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f174d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f175e;

    /* renamed from: f, reason: collision with root package name */
    public final long f176f;

    /* renamed from: g, reason: collision with root package name */
    public final long f177g;

    /* renamed from: h, reason: collision with root package name */
    public final Set f178h;

    static {
        new C0024d(null);
        f170i = new C0026f(null, false, false, false, false, 0L, 0L, null, 255, null);
    }

    public C0026f(NetworkType requiredNetworkType, boolean z6, boolean z7, boolean z8, boolean z9, long j7, long j8, Set<C0025e> contentUriTriggers) {
        kotlin.jvm.internal.j.checkNotNullParameter(requiredNetworkType, "requiredNetworkType");
        kotlin.jvm.internal.j.checkNotNullParameter(contentUriTriggers, "contentUriTriggers");
        this.f171a = requiredNetworkType;
        this.f172b = z6;
        this.f173c = z7;
        this.f174d = z8;
        this.f175e = z9;
        this.f176f = j7;
        this.f177g = j8;
        this.f178h = contentUriTriggers;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !kotlin.jvm.internal.j.areEqual(C0026f.class, obj.getClass())) {
            return false;
        }
        C0026f c0026f = (C0026f) obj;
        if (this.f172b == c0026f.f172b && this.f173c == c0026f.f173c && this.f174d == c0026f.f174d && this.f175e == c0026f.f175e && this.f176f == c0026f.f176f && this.f177g == c0026f.f177g && this.f171a == c0026f.f171a) {
            return kotlin.jvm.internal.j.areEqual(this.f178h, c0026f.f178h);
        }
        return false;
    }

    public final long getContentTriggerMaxDelayMillis() {
        return this.f177g;
    }

    public final long getContentTriggerUpdateDelayMillis() {
        return this.f176f;
    }

    public final Set<C0025e> getContentUriTriggers() {
        return this.f178h;
    }

    public final NetworkType getRequiredNetworkType() {
        return this.f171a;
    }

    public final boolean hasContentUriTriggers() {
        return !this.f178h.isEmpty();
    }

    public int hashCode() {
        int hashCode = ((((((((this.f171a.hashCode() * 31) + (this.f172b ? 1 : 0)) * 31) + (this.f173c ? 1 : 0)) * 31) + (this.f174d ? 1 : 0)) * 31) + (this.f175e ? 1 : 0)) * 31;
        long j7 = this.f176f;
        int i2 = (hashCode + ((int) (j7 ^ (j7 >>> 32)))) * 31;
        long j8 = this.f177g;
        return this.f178h.hashCode() + ((i2 + ((int) (j8 ^ (j8 >>> 32)))) * 31);
    }

    public final boolean requiresBatteryNotLow() {
        return this.f174d;
    }

    public final boolean requiresCharging() {
        return this.f172b;
    }

    public final boolean requiresDeviceIdle() {
        return this.f173c;
    }

    public final boolean requiresStorageNotLow() {
        return this.f175e;
    }

    public /* synthetic */ C0026f(NetworkType networkType, boolean z6, boolean z7, boolean z8, boolean z9, long j7, long j8, Set set, int i2, kotlin.jvm.internal.g gVar) {
        this((i2 & 1) != 0 ? NetworkType.f8258b : networkType, (i2 & 2) != 0 ? false : z6, (i2 & 4) != 0 ? false : z7, (i2 & 8) != 0 ? false : z8, (i2 & 16) != 0 ? false : z9, (i2 & 32) != 0 ? -1L : j7, (i2 & 64) != 0 ? -1L : j8, (i2 & 128) != 0 ? AbstractC1764B.emptySet() : set);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0026f(B1.C0026f r13) {
        /*
            r12 = this;
            java.lang.String r0 = "other"
            kotlin.jvm.internal.j.checkNotNullParameter(r13, r0)
            boolean r3 = r13.f172b
            boolean r4 = r13.f173c
            androidx.work.NetworkType r2 = r13.f171a
            boolean r5 = r13.f174d
            boolean r6 = r13.f175e
            java.util.Set r11 = r13.f178h
            long r7 = r13.f176f
            long r9 = r13.f177g
            r1 = r12
            r1.<init>(r2, r3, r4, r5, r6, r7, r9, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: B1.C0026f.<init>(B1.f):void");
    }
}
