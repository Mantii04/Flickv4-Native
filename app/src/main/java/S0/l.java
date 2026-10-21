package S0;

import P3.v;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;
import v0.X;
import v0.r0;

/* loaded from: classes.dex */
public final class l implements C {

    /* renamed from: a, reason: collision with root package name */
    public final s f3260a;

    /* renamed from: c, reason: collision with root package name */
    public final Format f3262c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f3263d;

    /* renamed from: g, reason: collision with root package name */
    public r0 f3266g;

    /* renamed from: h, reason: collision with root package name */
    public int f3267h;

    /* renamed from: i, reason: collision with root package name */
    public int f3268i;

    /* renamed from: j, reason: collision with root package name */
    public long[] f3269j;

    /* renamed from: k, reason: collision with root package name */
    public long f3270k;

    /* renamed from: b, reason: collision with root package name */
    public final b f3261b = new b();

    /* renamed from: f, reason: collision with root package name */
    public byte[] f3265f = Util.EMPTY_BYTE_ARRAY;

    /* renamed from: e, reason: collision with root package name */
    public final ParsableByteArray f3264e = new ParsableByteArray();

    public l(s sVar, Format format) {
        this.f3260a = sVar;
        this.f3262c = format != null ? format.buildUpon().setSampleMimeType(MimeTypes.APPLICATION_MEDIA3_CUES).setCodecs(format.sampleMimeType).setCueReplacementBehavior(sVar.getCueReplacementBehavior()).build() : null;
        this.f3263d = new ArrayList();
        this.f3268i = 0;
        this.f3269j = Util.EMPTY_LONG_ARRAY;
        this.f3270k = androidx.media3.common.C.TIME_UNSET;
    }

    public final void a(k kVar) {
        v.checkNotNull(this.f3266g);
        byte[] bArr = kVar.f3259e;
        int length = bArr.length;
        ParsableByteArray parsableByteArray = this.f3264e;
        parsableByteArray.reset(bArr);
        this.f3266g.sampleData(parsableByteArray, length);
        this.f3266g.sampleMetadata(kVar.f3258b, 1, length, 0, null);
    }

    @Override // v0.C
    public final /* synthetic */ List getSniffFailureDetails() {
        return AbstractC1716B.a(this);
    }

    @Override // v0.C
    public final /* synthetic */ C getUnderlyingImplementation() {
        return AbstractC1716B.b(this);
    }

    @Override // v0.C
    public void init(F f3) {
        v.checkState(this.f3268i == 0);
        r0 track = f3.track(0, 3);
        this.f3266g = track;
        Format format = this.f3262c;
        if (format != null) {
            track.format(format);
            f3.endTracks();
            f3.seekMap(new X(new long[]{0}, new long[]{0}, androidx.media3.common.C.TIME_UNSET));
        }
        this.f3268i = 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0077, code lost:
    
        if (r24.f3267h != r14) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007c, code lost:
    
        if (r2 == (-1)) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x007e, code lost:
    
        r5 = r24.f3270k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0082, code lost:
    
        if (r5 == androidx.media3.common.C.TIME_UNSET) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0084, code lost:
    
        r2 = S0.r.cuesAfterThenRemainingCuesBefore(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0092, code lost:
    
        r24.f3260a.parse(r24.f3265f, 0, r24.f3267h, r2, new A0.a(r24, 10));
        java.util.Collections.sort(r9);
        r24.f3269j = new long[r9.size()];
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00bc, code lost:
    
        if (r2 >= r9.size()) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00be, code lost:
    
        r24.f3269j[r2] = ((S0.k) r9.get(r2)).f3258b;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00cd, code lost:
    
        r24.f3265f = androidx.media3.common.util.Util.EMPTY_BYTE_ARRAY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00d1, code lost:
    
        r24.f3268i = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x008d, code lost:
    
        r2 = S0.r.allCues();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x008b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00da, code lost:
    
        throw androidx.media3.common.ParserException.createForMalformedContainer("SubtitleParser failed.", r0);
     */
    @Override // v0.C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(v0.D r25, v0.c0 r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: S0.l.read(v0.D, v0.c0):int");
    }

    @Override // v0.C
    public void release() {
        if (this.f3268i == 5) {
            return;
        }
        this.f3260a.reset();
        this.f3268i = 5;
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        int i2 = this.f3268i;
        v.checkState((i2 == 0 || i2 == 5) ? false : true);
        this.f3270k = j8;
        if (this.f3268i == 2) {
            this.f3268i = 1;
        }
        if (this.f3268i == 4) {
            this.f3268i = 3;
        }
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        return true;
    }
}
