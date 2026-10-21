package c1;

import androidx.media3.common.util.ParsableByteArray;
import v0.r0;

/* renamed from: c1.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0707l implements InterfaceC0705j {

    /* renamed from: r, reason: collision with root package name */
    public static final double[] f8760r = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a, reason: collision with root package name */
    public String f8761a;

    /* renamed from: b, reason: collision with root package name */
    public r0 f8762b;

    /* renamed from: c, reason: collision with root package name */
    public final C0695Z f8763c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8764d;

    /* renamed from: e, reason: collision with root package name */
    public final ParsableByteArray f8765e;

    /* renamed from: f, reason: collision with root package name */
    public final C0672B f8766f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean[] f8767g;

    /* renamed from: h, reason: collision with root package name */
    public final C0706k f8768h;

    /* renamed from: i, reason: collision with root package name */
    public long f8769i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8770j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8771k;

    /* renamed from: l, reason: collision with root package name */
    public long f8772l;

    /* renamed from: m, reason: collision with root package name */
    public long f8773m;

    /* renamed from: n, reason: collision with root package name */
    public long f8774n;

    /* renamed from: o, reason: collision with root package name */
    public long f8775o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f8776p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f8777q;

    public C0707l(String str) {
        this(null, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d8  */
    @Override // c1.InterfaceC0705j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void consume(androidx.media3.common.util.ParsableByteArray r29) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c1.C0707l.consume(androidx.media3.common.util.ParsableByteArray):void");
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        this.f8761a = c0692w.getFormatId();
        this.f8762b = f3.track(c0692w.getTrackId(), 2);
        C0695Z c0695z = this.f8763c;
        if (c0695z != null) {
            c0695z.createTracks(f3, c0692w);
        }
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
        P3.v.checkNotNull(this.f8762b);
        if (z6) {
            boolean z7 = this.f8776p;
            this.f8762b.sampleMetadata(this.f8775o, z7 ? 1 : 0, (int) (this.f8769i - this.f8774n), 0, null);
        }
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        this.f8773m = j7;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        s0.v.clearPrefixFlags(this.f8767g);
        this.f8768h.reset();
        C0672B c0672b = this.f8766f;
        if (c0672b != null) {
            c0672b.reset();
        }
        this.f8769i = 0L;
        this.f8770j = false;
        this.f8773m = androidx.media3.common.C.TIME_UNSET;
        this.f8775o = androidx.media3.common.C.TIME_UNSET;
    }

    public C0707l(C0695Z c0695z, String str) {
        this.f8763c = c0695z;
        this.f8764d = str;
        this.f8767g = new boolean[4];
        this.f8768h = new C0706k(128);
        if (c0695z != null) {
            this.f8766f = new C0672B(178, 128);
            this.f8765e = new ParsableByteArray();
        } else {
            this.f8766f = null;
            this.f8765e = null;
        }
        this.f8773m = androidx.media3.common.C.TIME_UNSET;
        this.f8775o = androidx.media3.common.C.TIME_UNSET;
    }
}
