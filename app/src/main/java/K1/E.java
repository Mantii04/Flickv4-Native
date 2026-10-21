package K1;

import B1.C0026f;
import B1.C0028h;
import androidx.media3.exoplayer.Renderer;
import androidx.work.BackoffPolicy;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;

/* loaded from: classes.dex */
public final class E {

    /* renamed from: u, reason: collision with root package name */
    public static final String f1593u;

    /* renamed from: a, reason: collision with root package name */
    public final String f1594a;

    /* renamed from: b, reason: collision with root package name */
    public WorkInfo$State f1595b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1596c;

    /* renamed from: d, reason: collision with root package name */
    public String f1597d;

    /* renamed from: e, reason: collision with root package name */
    public C0028h f1598e;

    /* renamed from: f, reason: collision with root package name */
    public final C0028h f1599f;

    /* renamed from: g, reason: collision with root package name */
    public final long f1600g;

    /* renamed from: h, reason: collision with root package name */
    public long f1601h;

    /* renamed from: i, reason: collision with root package name */
    public long f1602i;

    /* renamed from: j, reason: collision with root package name */
    public final C0026f f1603j;

    /* renamed from: k, reason: collision with root package name */
    public final int f1604k;

    /* renamed from: l, reason: collision with root package name */
    public BackoffPolicy f1605l;

    /* renamed from: m, reason: collision with root package name */
    public long f1606m;

    /* renamed from: n, reason: collision with root package name */
    public long f1607n;

    /* renamed from: o, reason: collision with root package name */
    public final long f1608o;

    /* renamed from: p, reason: collision with root package name */
    public final long f1609p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f1610q;

    /* renamed from: r, reason: collision with root package name */
    public final OutOfQuotaPolicy f1611r;

    /* renamed from: s, reason: collision with root package name */
    public final int f1612s;

    /* renamed from: t, reason: collision with root package name */
    public final int f1613t;

    static {
        new C(null);
        String tagWithPrefix = B1.t.tagWithPrefix("WorkSpec");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"WorkSpec\")");
        f1593u = tagWithPrefix;
    }

    public E(String id, WorkInfo$State state, String workerClassName, String str, C0028h input, C0028h output, long j7, long j8, long j9, C0026f constraints, int i2, BackoffPolicy backoffPolicy, long j10, long j11, long j12, long j13, boolean z6, OutOfQuotaPolicy outOfQuotaPolicy, int i7, int i8) {
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        kotlin.jvm.internal.j.checkNotNullParameter(state, "state");
        kotlin.jvm.internal.j.checkNotNullParameter(workerClassName, "workerClassName");
        kotlin.jvm.internal.j.checkNotNullParameter(input, "input");
        kotlin.jvm.internal.j.checkNotNullParameter(output, "output");
        kotlin.jvm.internal.j.checkNotNullParameter(constraints, "constraints");
        kotlin.jvm.internal.j.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        kotlin.jvm.internal.j.checkNotNullParameter(outOfQuotaPolicy, "outOfQuotaPolicy");
        this.f1594a = id;
        this.f1595b = state;
        this.f1596c = workerClassName;
        this.f1597d = str;
        this.f1598e = input;
        this.f1599f = output;
        this.f1600g = j7;
        this.f1601h = j8;
        this.f1602i = j9;
        this.f1603j = constraints;
        this.f1604k = i2;
        this.f1605l = backoffPolicy;
        this.f1606m = j10;
        this.f1607n = j11;
        this.f1608o = j12;
        this.f1609p = j13;
        this.f1610q = z6;
        this.f1611r = outOfQuotaPolicy;
        this.f1612s = i7;
        this.f1613t = i8;
    }

    public static /* synthetic */ E copy$default(E e3, String str, WorkInfo$State workInfo$State, String str2, String str3, C0028h c0028h, C0028h c0028h2, long j7, long j8, long j9, C0026f c0026f, int i2, BackoffPolicy backoffPolicy, long j10, long j11, long j12, long j13, boolean z6, OutOfQuotaPolicy outOfQuotaPolicy, int i7, int i8, int i9, Object obj) {
        int i10;
        OutOfQuotaPolicy outOfQuotaPolicy2;
        String str4 = (i9 & 1) != 0 ? e3.f1594a : str;
        WorkInfo$State workInfo$State2 = (i9 & 2) != 0 ? e3.f1595b : workInfo$State;
        String str5 = (i9 & 4) != 0 ? e3.f1596c : str2;
        String str6 = (i9 & 8) != 0 ? e3.f1597d : str3;
        C0028h c0028h3 = (i9 & 16) != 0 ? e3.f1598e : c0028h;
        C0028h c0028h4 = (i9 & 32) != 0 ? e3.f1599f : c0028h2;
        long j14 = (i9 & 64) != 0 ? e3.f1600g : j7;
        long j15 = (i9 & 128) != 0 ? e3.f1601h : j8;
        long j16 = (i9 & 256) != 0 ? e3.f1602i : j9;
        C0026f c0026f2 = (i9 & 512) != 0 ? e3.f1603j : c0026f;
        int i11 = (i9 & 1024) != 0 ? e3.f1604k : i2;
        String str7 = str4;
        BackoffPolicy backoffPolicy2 = (i9 & 2048) != 0 ? e3.f1605l : backoffPolicy;
        WorkInfo$State workInfo$State3 = workInfo$State2;
        long j17 = (i9 & 4096) != 0 ? e3.f1606m : j10;
        long j18 = (i9 & 8192) != 0 ? e3.f1607n : j11;
        long j19 = (i9 & 16384) != 0 ? e3.f1608o : j12;
        long j20 = (i9 & 32768) != 0 ? e3.f1609p : j13;
        boolean z7 = (i9 & 65536) != 0 ? e3.f1610q : z6;
        long j21 = j20;
        OutOfQuotaPolicy outOfQuotaPolicy3 = (i9 & 131072) != 0 ? e3.f1611r : outOfQuotaPolicy;
        int i12 = (i9 & 262144) != 0 ? e3.f1612s : i7;
        if ((i9 & 524288) != 0) {
            outOfQuotaPolicy2 = outOfQuotaPolicy3;
            i10 = e3.f1613t;
        } else {
            i10 = i8;
            outOfQuotaPolicy2 = outOfQuotaPolicy3;
        }
        return e3.copy(str7, workInfo$State3, str5, str6, c0028h3, c0028h4, j14, j15, j16, c0026f2, i11, backoffPolicy2, j17, j18, j19, j21, z7, outOfQuotaPolicy2, i12, i10);
    }

    public final long calculateNextRunTime() {
        if (isBackedOff()) {
            BackoffPolicy backoffPolicy = this.f1605l;
            BackoffPolicy backoffPolicy2 = BackoffPolicy.f8248e;
            int i2 = this.f1604k;
            return M5.g.coerceAtMost(backoffPolicy == backoffPolicy2 ? this.f1606m * i2 : (long) Math.scalb(this.f1606m, i2 - 1), 18000000L) + this.f1607n;
        }
        boolean isPeriodic = isPeriodic();
        long j7 = this.f1600g;
        if (!isPeriodic) {
            long j8 = this.f1607n;
            if (j8 == 0) {
                j8 = System.currentTimeMillis();
            }
            return j8 + j7;
        }
        int i7 = this.f1612s;
        long j9 = this.f1607n;
        if (i7 == 0) {
            j9 += j7;
        }
        long j10 = this.f1602i;
        long j11 = this.f1601h;
        if (j10 != j11) {
            return j9 + j11 + (i7 == 0 ? (-1) * j10 : 0L);
        }
        return j9 + (i7 != 0 ? j11 : 0L);
    }

    public final E copy(String id, WorkInfo$State state, String workerClassName, String str, C0028h input, C0028h output, long j7, long j8, long j9, C0026f constraints, int i2, BackoffPolicy backoffPolicy, long j10, long j11, long j12, long j13, boolean z6, OutOfQuotaPolicy outOfQuotaPolicy, int i7, int i8) {
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        kotlin.jvm.internal.j.checkNotNullParameter(state, "state");
        kotlin.jvm.internal.j.checkNotNullParameter(workerClassName, "workerClassName");
        kotlin.jvm.internal.j.checkNotNullParameter(input, "input");
        kotlin.jvm.internal.j.checkNotNullParameter(output, "output");
        kotlin.jvm.internal.j.checkNotNullParameter(constraints, "constraints");
        kotlin.jvm.internal.j.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        kotlin.jvm.internal.j.checkNotNullParameter(outOfQuotaPolicy, "outOfQuotaPolicy");
        return new E(id, state, workerClassName, str, input, output, j7, j8, j9, constraints, i2, backoffPolicy, j10, j11, j12, j13, z6, outOfQuotaPolicy, i7, i8);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof E)) {
            return false;
        }
        E e3 = (E) obj;
        return kotlin.jvm.internal.j.areEqual(this.f1594a, e3.f1594a) && this.f1595b == e3.f1595b && kotlin.jvm.internal.j.areEqual(this.f1596c, e3.f1596c) && kotlin.jvm.internal.j.areEqual(this.f1597d, e3.f1597d) && kotlin.jvm.internal.j.areEqual(this.f1598e, e3.f1598e) && kotlin.jvm.internal.j.areEqual(this.f1599f, e3.f1599f) && this.f1600g == e3.f1600g && this.f1601h == e3.f1601h && this.f1602i == e3.f1602i && kotlin.jvm.internal.j.areEqual(this.f1603j, e3.f1603j) && this.f1604k == e3.f1604k && this.f1605l == e3.f1605l && this.f1606m == e3.f1606m && this.f1607n == e3.f1607n && this.f1608o == e3.f1608o && this.f1609p == e3.f1609p && this.f1610q == e3.f1610q && this.f1611r == e3.f1611r && this.f1612s == e3.f1612s && this.f1613t == e3.f1613t;
    }

    public final int getGeneration() {
        return this.f1613t;
    }

    public final int getPeriodCount() {
        return this.f1612s;
    }

    public final boolean hasConstraints() {
        return !kotlin.jvm.internal.j.areEqual(C0026f.f170i, this.f1603j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int b7 = A.i.b((this.f1595b.hashCode() + (this.f1594a.hashCode() * 31)) * 31, 31, this.f1596c);
        String str = this.f1597d;
        int hashCode = (this.f1599f.hashCode() + ((this.f1598e.hashCode() + ((b7 + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31;
        long j7 = this.f1600g;
        int i2 = (hashCode + ((int) (j7 ^ (j7 >>> 32)))) * 31;
        long j8 = this.f1601h;
        int i7 = (i2 + ((int) (j8 ^ (j8 >>> 32)))) * 31;
        long j9 = this.f1602i;
        int hashCode2 = (this.f1605l.hashCode() + ((((this.f1603j.hashCode() + ((i7 + ((int) (j9 ^ (j9 >>> 32)))) * 31)) * 31) + this.f1604k) * 31)) * 31;
        long j10 = this.f1606m;
        int i8 = (hashCode2 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        long j11 = this.f1607n;
        int i9 = (i8 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.f1608o;
        int i10 = (i9 + ((int) (j12 ^ (j12 >>> 32)))) * 31;
        long j13 = this.f1609p;
        int i11 = (i10 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
        boolean z6 = this.f1610q;
        int i12 = z6;
        if (z6 != 0) {
            i12 = 1;
        }
        return ((((this.f1611r.hashCode() + ((i11 + i12) * 31)) * 31) + this.f1612s) * 31) + this.f1613t;
    }

    public final boolean isBackedOff() {
        return this.f1595b == WorkInfo$State.f8268b && this.f1604k > 0;
    }

    public final boolean isPeriodic() {
        return this.f1601h != 0;
    }

    public final void setBackoffDelayDuration(long j7) {
        String str = f1593u;
        if (j7 > 18000000) {
            B1.t.get().warning(str, "Backoff delay duration exceeds maximum value");
        }
        if (j7 < Renderer.DEFAULT_DURATION_TO_PROGRESS_US) {
            B1.t.get().warning(str, "Backoff delay duration less than minimum value");
        }
        this.f1606m = M5.g.coerceIn(j7, Renderer.DEFAULT_DURATION_TO_PROGRESS_US, 18000000L);
    }

    public final void setPeriodic(long j7) {
        if (j7 < 900000) {
            B1.t.get().warning(f1593u, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        setPeriodic(M5.g.coerceAtLeast(j7, 900000L), M5.g.coerceAtLeast(j7, 900000L));
    }

    public String toString() {
        return "{WorkSpec: " + this.f1594a + '}';
    }

    public final void setPeriodic(long j7, long j8) {
        String str = f1593u;
        if (j7 < 900000) {
            B1.t.get().warning(str, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        this.f1601h = M5.g.coerceAtLeast(j7, 900000L);
        if (j8 < 300000) {
            B1.t.get().warning(str, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (j8 > this.f1601h) {
            B1.t.get().warning(str, "Flex duration greater than interval duration; Changed to " + j7);
        }
        this.f1602i = M5.g.coerceIn(j8, 300000L, this.f1601h);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ E(java.lang.String r31, androidx.work.WorkInfo$State r32, java.lang.String r33, java.lang.String r34, B1.C0028h r35, B1.C0028h r36, long r37, long r39, long r41, B1.C0026f r43, int r44, androidx.work.BackoffPolicy r45, long r46, long r48, long r50, long r52, boolean r54, androidx.work.OutOfQuotaPolicy r55, int r56, int r57, int r58, kotlin.jvm.internal.g r59) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: K1.E.<init>(java.lang.String, androidx.work.WorkInfo$State, java.lang.String, java.lang.String, B1.h, B1.h, long, long, long, B1.f, int, androidx.work.BackoffPolicy, long, long, long, long, boolean, androidx.work.OutOfQuotaPolicy, int, int, int, kotlin.jvm.internal.g):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public E(String id, String workerClassName_) {
        this(id, null, workerClassName_, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 1048570, null);
        kotlin.jvm.internal.j.checkNotNullParameter(id, "id");
        kotlin.jvm.internal.j.checkNotNullParameter(workerClassName_, "workerClassName_");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public E(String newId, E other) {
        this(newId, other.f1595b, other.f1596c, other.f1597d, new C0028h(other.f1598e), new C0028h(other.f1599f), other.f1600g, other.f1601h, other.f1602i, new C0026f(other.f1603j), other.f1604k, other.f1605l, other.f1606m, other.f1607n, other.f1608o, other.f1609p, other.f1610q, other.f1611r, other.f1612s, 0, 524288, null);
        kotlin.jvm.internal.j.checkNotNullParameter(newId, "newId");
        kotlin.jvm.internal.j.checkNotNullParameter(other, "other");
    }
}
