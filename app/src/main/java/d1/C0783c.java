package d1;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import java.io.IOException;
import v0.D;
import v0.F;
import v0.r0;

/* renamed from: d1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0783c implements InterfaceC0782b {

    /* renamed from: a, reason: collision with root package name */
    public final F f13502a;

    /* renamed from: b, reason: collision with root package name */
    public final r0 f13503b;

    /* renamed from: c, reason: collision with root package name */
    public final e f13504c;

    /* renamed from: d, reason: collision with root package name */
    public final Format f13505d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13506e;

    /* renamed from: f, reason: collision with root package name */
    public long f13507f;

    /* renamed from: g, reason: collision with root package name */
    public int f13508g;

    /* renamed from: h, reason: collision with root package name */
    public long f13509h;

    public C0783c(F f3, r0 r0Var, e eVar, String str, int i2) throws ParserException {
        this.f13502a = f3;
        this.f13503b = r0Var;
        this.f13504c = eVar;
        int i7 = (eVar.f13518b * eVar.f13521e) / 8;
        int i8 = eVar.f13520d;
        if (i8 != i7) {
            throw ParserException.createForMalformedContainer("Expected block size: " + i7 + "; got: " + i8, null);
        }
        int i9 = eVar.f13519c;
        int i10 = i9 * i7 * 8;
        int max = Math.max(i7, (i9 * i7) / 10);
        this.f13506e = max;
        this.f13505d = new Format.Builder().setContainerMimeType(MimeTypes.AUDIO_WAV).setSampleMimeType(str).setAverageBitrate(i10).setPeakBitrate(i10).setMaxInputSize(max).setChannelCount(eVar.f13518b).setSampleRate(i9).setPcmEncoding(i2).build();
    }

    @Override // d1.InterfaceC0782b
    public void init(int i2, long j7) {
        h hVar = new h(this.f13504c, 1, i2, j7);
        this.f13502a.seekMap(hVar);
        Format format = this.f13505d;
        r0 r0Var = this.f13503b;
        r0Var.format(format);
        r0Var.durationUs(hVar.getDurationUs());
    }

    @Override // d1.InterfaceC0782b
    public void reset(long j7) {
        this.f13507f = j7;
        this.f13508g = 0;
        this.f13509h = 0L;
    }

    @Override // d1.InterfaceC0782b
    public boolean sampleData(D d7, long j7) throws IOException {
        int i2;
        int i7;
        long j8 = j7;
        while (j8 > 0 && (i2 = this.f13508g) < (i7 = this.f13506e)) {
            int sampleData = this.f13503b.sampleData((DataReader) d7, (int) Math.min(i7 - i2, j8), true);
            if (sampleData == -1) {
                j8 = 0;
            } else {
                this.f13508g += sampleData;
                j8 -= sampleData;
            }
        }
        int i8 = this.f13504c.f13520d;
        int i9 = this.f13508g / i8;
        if (i9 > 0) {
            long scaleLargeTimestamp = this.f13507f + Util.scaleLargeTimestamp(this.f13509h, 1000000L, r1.f13519c);
            int i10 = i9 * i8;
            int i11 = this.f13508g - i10;
            this.f13503b.sampleMetadata(scaleLargeTimestamp, 1, i10, i11, null);
            this.f13509h += i9;
            this.f13508g = i11;
        }
        return j8 <= 0;
    }
}
