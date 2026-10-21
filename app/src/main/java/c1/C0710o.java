package c1;

import androidx.media3.common.util.ParsableByteArray;
import v0.r0;

/* renamed from: c1.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0710o implements InterfaceC0705j {

    /* renamed from: l, reason: collision with root package name */
    public static final float[] f8792l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: a, reason: collision with root package name */
    public final C0695Z f8793a;

    /* renamed from: f, reason: collision with root package name */
    public C0709n f8798f;

    /* renamed from: g, reason: collision with root package name */
    public long f8799g;

    /* renamed from: h, reason: collision with root package name */
    public String f8800h;

    /* renamed from: i, reason: collision with root package name */
    public r0 f8801i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8802j;

    /* renamed from: c, reason: collision with root package name */
    public final boolean[] f8795c = new boolean[4];

    /* renamed from: d, reason: collision with root package name */
    public final C0708m f8796d = new C0708m(128);

    /* renamed from: k, reason: collision with root package name */
    public long f8803k = androidx.media3.common.C.TIME_UNSET;

    /* renamed from: e, reason: collision with root package name */
    public final C0672B f8797e = new C0672B(178, 128);

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f8794b = new ParsableByteArray();

    public C0710o(C0695Z c0695z) {
        this.f8793a = c0695z;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01d9 A[SYNTHETIC] */
    @Override // c1.InterfaceC0705j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void consume(androidx.media3.common.util.ParsableByteArray r20) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c1.C0710o.consume(androidx.media3.common.util.ParsableByteArray):void");
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        this.f8800h = c0692w.getFormatId();
        r0 track = f3.track(c0692w.getTrackId(), 2);
        this.f8801i = track;
        this.f8798f = new C0709n(track);
        C0695Z c0695z = this.f8793a;
        if (c0695z != null) {
            c0695z.createTracks(f3, c0692w);
        }
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
        P3.v.checkNotNull(this.f8798f);
        if (z6) {
            this.f8798f.onDataEnd(this.f8799g, 0, this.f8802j);
            this.f8798f.reset();
        }
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        this.f8803k = j7;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        s0.v.clearPrefixFlags(this.f8795c);
        this.f8796d.reset();
        C0709n c0709n = this.f8798f;
        if (c0709n != null) {
            c0709n.reset();
        }
        C0672B c0672b = this.f8797e;
        if (c0672b != null) {
            c0672b.reset();
        }
        this.f8799g = 0L;
        this.f8803k = androidx.media3.common.C.TIME_UNSET;
    }
}
