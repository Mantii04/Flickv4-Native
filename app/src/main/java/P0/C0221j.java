package P0;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import s0.C1609e;

/* renamed from: P0.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0221j implements InterfaceC0218g {

    /* renamed from: a, reason: collision with root package name */
    public final int f2585a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2586b;

    /* renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f2587c;

    public C0221j(C1609e c1609e, Format format) {
        ParsableByteArray parsableByteArray = c1609e.f19912b;
        this.f2587c = parsableByteArray;
        parsableByteArray.setPosition(12);
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (MimeTypes.AUDIO_RAW.equals(format.sampleMimeType)) {
            int pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
            if (readUnsignedIntToInt % pcmFrameSize != 0) {
                Log.w("BoxParsers", "Audio sample size mismatch. stsd sample size: " + pcmFrameSize + ", stsz sample size: " + readUnsignedIntToInt);
                readUnsignedIntToInt = pcmFrameSize;
            }
        }
        this.f2585a = readUnsignedIntToInt == 0 ? -1 : readUnsignedIntToInt;
        this.f2586b = parsableByteArray.readUnsignedIntToInt();
    }

    @Override // P0.InterfaceC0218g
    public int getFixedSampleSize() {
        return this.f2585a;
    }

    @Override // P0.InterfaceC0218g
    public int getSampleCount() {
        return this.f2586b;
    }

    @Override // P0.InterfaceC0218g
    public int readNextSampleSize() {
        int i2 = this.f2585a;
        return i2 == -1 ? this.f2587c.readUnsignedIntToInt() : i2;
    }
}
