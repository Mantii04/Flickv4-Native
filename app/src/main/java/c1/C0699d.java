package c1;

import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import v0.r0;

/* renamed from: c1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0699d implements InterfaceC0705j {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableBitArray f8678a;

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f8679b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8680c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8681d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8682e;

    /* renamed from: f, reason: collision with root package name */
    public String f8683f;

    /* renamed from: g, reason: collision with root package name */
    public r0 f8684g;

    /* renamed from: h, reason: collision with root package name */
    public int f8685h;

    /* renamed from: i, reason: collision with root package name */
    public int f8686i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8687j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8688k;

    /* renamed from: l, reason: collision with root package name */
    public long f8689l;

    /* renamed from: m, reason: collision with root package name */
    public Format f8690m;

    /* renamed from: n, reason: collision with root package name */
    public int f8691n;

    /* renamed from: o, reason: collision with root package name */
    public long f8692o;

    public C0699d(String str) {
        this(null, 0, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x009a, code lost:
    
        if (androidx.media3.common.MimeTypes.AUDIO_AC4.equals(r3.sampleMimeType) != false) goto L28;
     */
    @Override // c1.InterfaceC0705j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void consume(androidx.media3.common.util.ParsableByteArray r13) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c1.C0699d.consume(androidx.media3.common.util.ParsableByteArray):void");
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        this.f8683f = c0692w.getFormatId();
        this.f8684g = f3.track(c0692w.getTrackId(), 1);
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        this.f8692o = j7;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        this.f8685h = 0;
        this.f8686i = 0;
        this.f8687j = false;
        this.f8688k = false;
        this.f8692o = androidx.media3.common.C.TIME_UNSET;
    }

    public C0699d(String str, int i2, String str2) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[16]);
        this.f8678a = parsableBitArray;
        this.f8679b = new ParsableByteArray(parsableBitArray.data);
        this.f8685h = 0;
        this.f8686i = 0;
        this.f8687j = false;
        this.f8688k = false;
        this.f8692o = androidx.media3.common.C.TIME_UNSET;
        this.f8680c = str;
        this.f8681d = i2;
        this.f8682e = str2;
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
    }
}
