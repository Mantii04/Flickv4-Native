package c1;

import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import v0.r0;

/* renamed from: c1.v, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0717v implements InterfaceC0705j {

    /* renamed from: a, reason: collision with root package name */
    public final String f8890a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8891b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8892c;

    /* renamed from: d, reason: collision with root package name */
    public final ParsableByteArray f8893d;

    /* renamed from: e, reason: collision with root package name */
    public final ParsableBitArray f8894e;

    /* renamed from: f, reason: collision with root package name */
    public r0 f8895f;

    /* renamed from: g, reason: collision with root package name */
    public String f8896g;

    /* renamed from: h, reason: collision with root package name */
    public Format f8897h;

    /* renamed from: i, reason: collision with root package name */
    public int f8898i;

    /* renamed from: j, reason: collision with root package name */
    public int f8899j;

    /* renamed from: k, reason: collision with root package name */
    public int f8900k;

    /* renamed from: l, reason: collision with root package name */
    public int f8901l;

    /* renamed from: m, reason: collision with root package name */
    public long f8902m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f8903n;

    /* renamed from: o, reason: collision with root package name */
    public int f8904o;

    /* renamed from: p, reason: collision with root package name */
    public int f8905p;

    /* renamed from: q, reason: collision with root package name */
    public int f8906q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f8907r;

    /* renamed from: s, reason: collision with root package name */
    public long f8908s;

    /* renamed from: t, reason: collision with root package name */
    public int f8909t;

    /* renamed from: u, reason: collision with root package name */
    public long f8910u;

    /* renamed from: v, reason: collision with root package name */
    public int f8911v;

    /* renamed from: w, reason: collision with root package name */
    public String f8912w;

    public C0717v(String str, int i2, String str2) {
        this.f8890a = str;
        this.f8891b = i2;
        this.f8892c = str2;
        ParsableByteArray parsableByteArray = new ParsableByteArray(1024);
        this.f8893d = parsableByteArray;
        this.f8894e = new ParsableBitArray(parsableByteArray.getData());
        this.f8902m = androidx.media3.common.C.TIME_UNSET;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x01a9, code lost:
    
        if (r19.f8903n == false) goto L89;
     */
    @Override // c1.InterfaceC0705j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void consume(androidx.media3.common.util.ParsableByteArray r20) throws androidx.media3.common.ParserException {
        /*
            Method dump skipped, instructions count: 635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c1.C0717v.consume(androidx.media3.common.util.ParsableByteArray):void");
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        this.f8895f = f3.track(c0692w.getTrackId(), 1);
        this.f8896g = c0692w.getFormatId();
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        this.f8902m = j7;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        this.f8898i = 0;
        this.f8902m = androidx.media3.common.C.TIME_UNSET;
        this.f8903n = false;
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
    }
}
