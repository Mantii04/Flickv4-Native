package S0;

import P3.v;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.io.EOFException;
import java.io.IOException;
import v0.p0;
import v0.r0;

/* loaded from: classes.dex */
public final class u implements r0 {

    /* renamed from: a, reason: collision with root package name */
    public final r0 f3282a;

    /* renamed from: b, reason: collision with root package name */
    public final q f3283b;

    /* renamed from: h, reason: collision with root package name */
    public s f3289h;

    /* renamed from: i, reason: collision with root package name */
    public Format f3290i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3291j;

    /* renamed from: c, reason: collision with root package name */
    public final b f3284c = new b();

    /* renamed from: e, reason: collision with root package name */
    public int f3286e = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f3287f = 0;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f3288g = Util.EMPTY_BYTE_ARRAY;

    /* renamed from: d, reason: collision with root package name */
    public final ParsableByteArray f3285d = new ParsableByteArray();

    public u(r0 r0Var, q qVar) {
        this.f3282a = r0Var;
        this.f3283b = qVar;
    }

    public final void a(int i2) {
        int length = this.f3288g.length;
        int i7 = this.f3287f;
        if (length - i7 >= i2) {
            return;
        }
        int i8 = i7 - this.f3286e;
        int max = Math.max(i8 * 2, i2 + i8);
        byte[] bArr = this.f3288g;
        byte[] bArr2 = max <= bArr.length ? bArr : new byte[max];
        System.arraycopy(bArr, this.f3286e, bArr2, 0, i8);
        this.f3286e = 0;
        this.f3287f = i8;
        this.f3288g = bArr2;
    }

    @Override // v0.r0
    public final /* synthetic */ void durationUs(long j7) {
        p0.a(this, j7);
    }

    @Override // v0.r0
    public void format(Format format) {
        v.checkNotNull(format.sampleMimeType);
        v.checkArgument(MimeTypes.getTrackType(format.sampleMimeType) == 3);
        boolean equals = format.equals(this.f3290i);
        q qVar = this.f3283b;
        if (!equals) {
            this.f3290i = format;
            this.f3289h = qVar.supportsFormat(format) ? qVar.create(format) : null;
        }
        s sVar = this.f3289h;
        r0 r0Var = this.f3282a;
        if (sVar == null) {
            r0Var.format(format);
        } else {
            r0Var.format(format.buildUpon().setSampleMimeType(MimeTypes.APPLICATION_MEDIA3_CUES).setCodecs(format.sampleMimeType).setSubsampleOffsetUs(Long.MAX_VALUE).setCueReplacementBehavior(qVar.getCueReplacementBehavior(format)).build());
        }
    }

    @Override // v0.r0
    public final /* synthetic */ int sampleData(DataReader dataReader, int i2, boolean z6) {
        return p0.b(this, dataReader, i2, z6);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0062  */
    @Override // v0.r0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sampleMetadata(long r9, int r11, int r12, int r13, v0.q0 r14) {
        /*
            r8 = this;
            S0.s r0 = r8.f3289h
            if (r0 != 0) goto Lf
            v0.r0 r1 = r8.f3282a
            r2 = r9
            r4 = r11
            r5 = r12
            r6 = r13
            r7 = r14
            r1.sampleMetadata(r2, r4, r5, r6, r7)
            return
        Lf:
            r5 = r12
            r6 = r13
            r7 = r14
            r13 = r11
            r11 = r9
            r1 = 0
            if (r7 != 0) goto L19
            r9 = 1
            goto L1a
        L19:
            r9 = r1
        L1a:
            java.lang.String r10 = "DRM on subtitles is not supported"
            P3.v.checkArgument(r9, r10)
            int r9 = r8.f3287f
            int r9 = r9 - r6
            int r2 = r9 - r5
            S0.s r0 = r8.f3289h     // Catch: java.lang.RuntimeException -> L47
            byte[] r3 = r8.f3288g     // Catch: java.lang.RuntimeException -> L47
            S0.r r4 = S0.r.allCues()     // Catch: java.lang.RuntimeException -> L47
            androidx.media3.exoplayer.analytics.o r9 = new androidx.media3.exoplayer.analytics.o     // Catch: java.lang.RuntimeException -> L47
            r14 = 2
            r10 = r8
            r9.<init>(r10, r11, r13, r14)     // Catch: java.lang.RuntimeException -> L43
            r6 = r10
            r14 = r9
            r9 = r0
            r11 = r2
            r10 = r3
            r13 = r4
            r12 = r5
            r9.parse(r10, r11, r12, r13, r14)     // Catch: java.lang.RuntimeException -> L3f
            r5 = r12
            goto L55
        L3f:
            r0 = move-exception
            r5 = r12
        L41:
            r9 = r0
            goto L4a
        L43:
            r0 = move-exception
            r6 = r10
        L45:
            r11 = r2
            goto L41
        L47:
            r0 = move-exception
            r6 = r8
            goto L45
        L4a:
            boolean r10 = r6.f3291j
            if (r10 == 0) goto L62
            java.lang.String r10 = "SubtitleTranscodingTO"
            java.lang.String r12 = "Parsing subtitles failed, ignoring sample."
            androidx.media3.common.util.Log.w(r10, r12, r9)
        L55:
            int r2 = r11 + r5
            r6.f3286e = r2
            int r9 = r6.f3287f
            if (r2 != r9) goto L61
            r6.f3286e = r1
            r6.f3287f = r1
        L61:
            return
        L62:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: S0.u.sampleMetadata(long, int, int, int, v0.q0):void");
    }

    public void shouldSuppressParsingErrors(boolean z6) {
        this.f3291j = z6;
    }

    @Override // v0.r0
    public final /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i2) {
        p0.c(this, parsableByteArray, i2);
    }

    @Override // v0.r0
    public int sampleData(DataReader dataReader, int i2, boolean z6, int i7) throws IOException {
        if (this.f3289h == null) {
            return this.f3282a.sampleData(dataReader, i2, z6, i7);
        }
        a(i2);
        int read = dataReader.read(this.f3288g, this.f3287f, i2);
        if (read != -1) {
            this.f3287f += read;
            return read;
        }
        if (z6) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // v0.r0
    public void sampleData(ParsableByteArray parsableByteArray, int i2, int i7) {
        if (this.f3289h == null) {
            this.f3282a.sampleData(parsableByteArray, i2, i7);
            return;
        }
        a(i2);
        parsableByteArray.readBytes(this.f3288g, this.f3287f, i2);
        this.f3287f += i2;
    }
}
