package N0;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import cz.msebera.android.httpclient.HttpStatus;
import v0.q0;
import v0.r0;
import v0.s0;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: P, reason: collision with root package name */
    public byte[] f2177P;

    /* renamed from: V, reason: collision with root package name */
    public s0 f2183V;

    /* renamed from: X, reason: collision with root package name */
    public boolean f2185X;

    /* renamed from: a, reason: collision with root package name */
    public boolean f2188a;

    /* renamed from: a0, reason: collision with root package name */
    public r0 f2189a0;

    /* renamed from: b, reason: collision with root package name */
    public String f2190b;

    /* renamed from: b0, reason: collision with root package name */
    public Format f2191b0;

    /* renamed from: c, reason: collision with root package name */
    public String f2192c;

    /* renamed from: c0, reason: collision with root package name */
    public int f2193c0;

    /* renamed from: d, reason: collision with root package name */
    public int f2194d;

    /* renamed from: e, reason: collision with root package name */
    public int f2195e;

    /* renamed from: f, reason: collision with root package name */
    public int f2196f;

    /* renamed from: g, reason: collision with root package name */
    public int f2197g;

    /* renamed from: h, reason: collision with root package name */
    public int f2198h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2199i;

    /* renamed from: j, reason: collision with root package name */
    public byte[] f2200j;

    /* renamed from: k, reason: collision with root package name */
    public q0 f2201k;

    /* renamed from: l, reason: collision with root package name */
    public byte[] f2202l;

    /* renamed from: m, reason: collision with root package name */
    public DrmInitData f2203m;

    /* renamed from: n, reason: collision with root package name */
    public int f2204n = -1;

    /* renamed from: o, reason: collision with root package name */
    public int f2205o = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f2206p = -1;

    /* renamed from: q, reason: collision with root package name */
    public int f2207q = -1;

    /* renamed from: r, reason: collision with root package name */
    public int f2208r = -1;

    /* renamed from: s, reason: collision with root package name */
    public int f2209s = 0;

    /* renamed from: t, reason: collision with root package name */
    public int f2210t = -1;

    /* renamed from: u, reason: collision with root package name */
    public float f2211u = 0.0f;

    /* renamed from: v, reason: collision with root package name */
    public float f2212v = 0.0f;

    /* renamed from: w, reason: collision with root package name */
    public float f2213w = 0.0f;

    /* renamed from: x, reason: collision with root package name */
    public byte[] f2214x = null;

    /* renamed from: y, reason: collision with root package name */
    public int f2215y = -1;

    /* renamed from: z, reason: collision with root package name */
    public boolean f2216z = false;

    /* renamed from: A, reason: collision with root package name */
    public int f2162A = -1;

    /* renamed from: B, reason: collision with root package name */
    public int f2163B = -1;

    /* renamed from: C, reason: collision with root package name */
    public int f2164C = -1;

    /* renamed from: D, reason: collision with root package name */
    public int f2165D = 1000;

    /* renamed from: E, reason: collision with root package name */
    public int f2166E = HttpStatus.SC_OK;

    /* renamed from: F, reason: collision with root package name */
    public float f2167F = -1.0f;

    /* renamed from: G, reason: collision with root package name */
    public float f2168G = -1.0f;

    /* renamed from: H, reason: collision with root package name */
    public float f2169H = -1.0f;

    /* renamed from: I, reason: collision with root package name */
    public float f2170I = -1.0f;

    /* renamed from: J, reason: collision with root package name */
    public float f2171J = -1.0f;

    /* renamed from: K, reason: collision with root package name */
    public float f2172K = -1.0f;

    /* renamed from: L, reason: collision with root package name */
    public float f2173L = -1.0f;

    /* renamed from: M, reason: collision with root package name */
    public float f2174M = -1.0f;

    /* renamed from: N, reason: collision with root package name */
    public float f2175N = -1.0f;

    /* renamed from: O, reason: collision with root package name */
    public float f2176O = -1.0f;

    /* renamed from: Q, reason: collision with root package name */
    public int f2178Q = 1;

    /* renamed from: R, reason: collision with root package name */
    public int f2179R = -1;

    /* renamed from: S, reason: collision with root package name */
    public int f2180S = 8000;

    /* renamed from: T, reason: collision with root package name */
    public long f2181T = 0;

    /* renamed from: U, reason: collision with root package name */
    public long f2182U = 0;

    /* renamed from: W, reason: collision with root package name */
    public boolean f2184W = false;

    /* renamed from: Y, reason: collision with root package name */
    public boolean f2186Y = true;

    /* renamed from: Z, reason: collision with root package name */
    public String f2187Z = "eng";

    public final byte[] a(String str) {
        byte[] bArr = this.f2202l;
        if (bArr != null) {
            return bArr;
        }
        throw ParserException.createForMalformedContainer("Missing CodecPrivate for codec " + str, null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0508, code lost:
    
        if (r3.readLong() == r4.getLeastSignificantBits()) goto L281;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x056b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0766  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x077d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0780  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0589  */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initializeFormat(int r27) throws androidx.media3.common.ParserException {
        /*
            Method dump skipped, instructions count: 2176
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: N0.g.initializeFormat(int):void");
    }

    public void outputPendingSampleMetadata() {
        s0 s0Var = this.f2183V;
        if (s0Var != null) {
            s0Var.outputPendingSampleMetadata(this.f2189a0, this.f2201k);
        }
    }

    public void reset() {
        s0 s0Var = this.f2183V;
        if (s0Var != null) {
            s0Var.reset();
        }
    }
}
