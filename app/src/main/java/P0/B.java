package P0;

import androidx.media3.common.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import v0.AbstractC1716B;
import v0.k0;
import v0.s0;

/* loaded from: classes.dex */
public final class B implements v0.C {

    /* renamed from: A, reason: collision with root package name */
    public long f2465A;

    /* renamed from: B, reason: collision with root package name */
    public v0.F f2466B;

    /* renamed from: C, reason: collision with root package name */
    public A[] f2467C;

    /* renamed from: D, reason: collision with root package name */
    public long[][] f2468D;

    /* renamed from: E, reason: collision with root package name */
    public int f2469E;

    /* renamed from: F, reason: collision with root package name */
    public E0.c f2470F;

    /* renamed from: a, reason: collision with root package name */
    public final S0.q f2471a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2472b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2473c;

    /* renamed from: d, reason: collision with root package name */
    public final ParsableByteArray f2474d;

    /* renamed from: e, reason: collision with root package name */
    public final ParsableByteArray f2475e;

    /* renamed from: f, reason: collision with root package name */
    public final ParsableByteArray f2476f;

    /* renamed from: g, reason: collision with root package name */
    public final ParsableByteArray f2477g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayDeque f2478h;

    /* renamed from: i, reason: collision with root package name */
    public final G f2479i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f2480j;

    /* renamed from: k, reason: collision with root package name */
    public ImmutableList f2481k;

    /* renamed from: l, reason: collision with root package name */
    public int f2482l;

    /* renamed from: m, reason: collision with root package name */
    public int f2483m;

    /* renamed from: n, reason: collision with root package name */
    public long f2484n;

    /* renamed from: o, reason: collision with root package name */
    public int f2485o;

    /* renamed from: p, reason: collision with root package name */
    public ParsableByteArray f2486p;

    /* renamed from: q, reason: collision with root package name */
    public int f2487q;

    /* renamed from: r, reason: collision with root package name */
    public int f2488r;

    /* renamed from: s, reason: collision with root package name */
    public int f2489s;

    /* renamed from: t, reason: collision with root package name */
    public int f2490t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f2491u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f2492v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f2493w;

    /* renamed from: x, reason: collision with root package name */
    public long f2494x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f2495y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f2496z;

    public B(S0.q qVar, int i2) {
        this.f2471a = qVar;
        this.f2472b = i2;
        this.f2473c = (i2 & 256) != 0;
        this.f2481k = ImmutableList.of();
        this.f2482l = (i2 & 4) != 0 ? 3 : 0;
        this.f2479i = new G();
        this.f2480j = new ArrayList();
        this.f2477g = new ParsableByteArray(16);
        this.f2478h = new ArrayDeque();
        this.f2474d = new ParsableByteArray(s0.v.f19984a);
        this.f2475e = new ParsableByteArray(6);
        this.f2476f = new ParsableByteArray();
        this.f2487q = -1;
        this.f2466B = v0.F.f20371d;
        this.f2467C = new A[0];
    }

    public static int codecsToParseWithinGopSampleDependenciesAsFlags(int i2) {
        int i7 = (i2 & 1) != 0 ? 32 : 0;
        return (i2 & 2) != 0 ? i7 | 128 : i7;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02f4  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r46) {
        /*
            Method dump skipped, instructions count: 1022
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: P0.B.a(long):void");
    }

    @Override // v0.C
    public final /* synthetic */ v0.C getUnderlyingImplementation() {
        return AbstractC1716B.b(this);
    }

    @Override // v0.C
    public void init(v0.F f3) {
        if ((this.f2472b & 16) == 0) {
            f3 = new S0.t(f3, this.f2471a);
        }
        this.f2466B = f3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:237:0x00cc, code lost:
    
        if (r3 == r9) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0455, code lost:
    
        throw androidx.media3.common.ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x037c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0585 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v9, types: [v0.r0] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v20, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v38 */
    /* JADX WARN: Type inference failed for: r7v50 */
    @Override // v0.C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(v0.D r37, v0.c0 r38) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: P0.B.read(v0.D, v0.c0):int");
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        this.f2478h.clear();
        this.f2485o = 0;
        this.f2487q = -1;
        this.f2488r = 0;
        this.f2489s = 0;
        this.f2490t = 0;
        this.f2491u = false;
        this.f2496z = false;
        if (j7 == 0) {
            if (this.f2482l != 3) {
                this.f2482l = 0;
                this.f2485o = 0;
                return;
            } else {
                this.f2479i.reset();
                this.f2480j.clear();
                return;
            }
        }
        for (A a7 : this.f2467C) {
            M m7 = a7.f2460b;
            int indexOfEarlierOrEqualSynchronizationSample = m7.getIndexOfEarlierOrEqualSynchronizationSample(j8);
            if (indexOfEarlierOrEqualSynchronizationSample == -1) {
                indexOfEarlierOrEqualSynchronizationSample = m7.getIndexOfLaterOrEqualSynchronizationSample(j8);
            }
            a7.f2463e = indexOfEarlierOrEqualSynchronizationSample;
            s0 s0Var = a7.f2462d;
            if (s0Var != null) {
                s0Var.reset();
            }
        }
    }

    @Override // v0.C
    public boolean sniff(v0.D d7) throws IOException {
        k0 sniffUnfragmented = I.sniffUnfragmented(d7, (this.f2472b & 2) != 0);
        this.f2481k = sniffUnfragmented != null ? ImmutableList.of(sniffUnfragmented) : ImmutableList.of();
        return sniffUnfragmented == null;
    }

    @Override // v0.C
    public ImmutableList<k0> getSniffFailureDetails() {
        return this.f2481k;
    }

    @Override // v0.C
    public void release() {
    }
}
