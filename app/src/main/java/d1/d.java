package d1;

import P3.v;
import android.util.Pair;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;
import v0.C;
import v0.D;
import v0.F;
import v0.c0;
import v0.r0;
import v0.y0;

/* loaded from: classes.dex */
public final class d implements C {

    /* renamed from: a, reason: collision with root package name */
    public F f13510a;

    /* renamed from: b, reason: collision with root package name */
    public r0 f13511b;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC0782b f13514e;

    /* renamed from: c, reason: collision with root package name */
    public int f13512c = 0;

    /* renamed from: d, reason: collision with root package name */
    public long f13513d = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f13515f = -1;

    /* renamed from: g, reason: collision with root package name */
    public long f13516g = -1;

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
        this.f13510a = f3;
        this.f13511b = f3.track(0, 1);
        f3.endTracks();
    }

    @Override // v0.C
    public int read(D d7, c0 c0Var) throws IOException {
        v.checkNotNull(this.f13511b);
        Util.castNonNull(this.f13510a);
        int i2 = this.f13512c;
        if (i2 == 0) {
            v.checkState(d7.getPosition() == 0);
            int i7 = this.f13515f;
            if (i7 != -1) {
                d7.skipFully(i7);
                this.f13512c = 4;
            } else {
                if (!g.checkFileType(d7)) {
                    throw ParserException.createForMalformedContainer("Unsupported or unrecognized wav file type.", null);
                }
                d7.skipFully((int) (d7.getPeekPosition() - d7.getPosition()));
                this.f13512c = 1;
            }
            return 0;
        }
        if (i2 == 1) {
            this.f13513d = g.readRf64SampleDataSize(d7);
            this.f13512c = 2;
            return 0;
        }
        if (i2 == 2) {
            e readFormat = g.readFormat(d7);
            int i8 = readFormat.f13517a;
            if (i8 == 17) {
                this.f13514e = new C0781a(this.f13510a, this.f13511b, readFormat);
            } else if (i8 == 6) {
                this.f13514e = new C0783c(this.f13510a, this.f13511b, readFormat, MimeTypes.AUDIO_ALAW, -1);
            } else if (i8 == 7) {
                this.f13514e = new C0783c(this.f13510a, this.f13511b, readFormat, MimeTypes.AUDIO_MLAW, -1);
            } else {
                int pcmEncodingForType = y0.getPcmEncodingForType(i8, readFormat.f13521e);
                if (pcmEncodingForType == 0) {
                    throw ParserException.createForUnsupportedContainerFeature("Unsupported WAV format type: " + readFormat.f13517a);
                }
                this.f13514e = new C0783c(this.f13510a, this.f13511b, readFormat, MimeTypes.AUDIO_RAW, pcmEncodingForType);
            }
            this.f13512c = 3;
            return 0;
        }
        if (i2 != 3) {
            if (i2 != 4) {
                throw new IllegalStateException();
            }
            v.checkState(this.f13516g != -1);
            return ((InterfaceC0782b) v.checkNotNull(this.f13514e)).sampleData(d7, this.f13516g - d7.getPosition()) ? -1 : 0;
        }
        Pair<Long, Long> skipToSampleData = g.skipToSampleData(d7);
        this.f13515f = ((Long) skipToSampleData.first).intValue();
        long longValue = ((Long) skipToSampleData.second).longValue();
        long j7 = this.f13513d;
        if (j7 != -1 && longValue == 4294967295L) {
            longValue = j7;
        }
        this.f13516g = this.f13515f + longValue;
        long length = d7.getLength();
        if (length != -1 && this.f13516g > length) {
            Log.w("WavExtractor", "Data exceeds input length: " + this.f13516g + ", " + length);
            this.f13516g = length;
        }
        ((InterfaceC0782b) v.checkNotNull(this.f13514e)).init(this.f13515f, this.f13516g);
        this.f13512c = 4;
        return 0;
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        this.f13512c = j7 == 0 ? 0 : 4;
        InterfaceC0782b interfaceC0782b = this.f13514e;
        if (interfaceC0782b != null) {
            interfaceC0782b.reset(j8);
        }
    }

    @Override // v0.C
    public boolean sniff(D d7) throws IOException {
        return g.checkFileType(d7);
    }

    @Override // v0.C
    public void release() {
    }
}
