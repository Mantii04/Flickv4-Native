package c1;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;

/* renamed from: c1.H, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0678H {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0705j f8573a;

    /* renamed from: b, reason: collision with root package name */
    public final TimestampAdjuster f8574b;

    /* renamed from: c, reason: collision with root package name */
    public final ParsableBitArray f8575c = new ParsableBitArray(new byte[64]);

    /* renamed from: d, reason: collision with root package name */
    public boolean f8576d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8577e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8578f;

    /* renamed from: g, reason: collision with root package name */
    public long f8579g;

    public C0678H(InterfaceC0705j interfaceC0705j, TimestampAdjuster timestampAdjuster) {
        this.f8573a = interfaceC0705j;
        this.f8574b = timestampAdjuster;
    }

    public void consume(ParsableByteArray parsableByteArray) throws ParserException {
        ParsableBitArray parsableBitArray = this.f8575c;
        parsableByteArray.readBytes(parsableBitArray.data, 0, 3);
        parsableBitArray.setPosition(0);
        parsableBitArray.skipBits(8);
        this.f8576d = parsableBitArray.readBit();
        this.f8577e = parsableBitArray.readBit();
        parsableBitArray.skipBits(6);
        parsableByteArray.readBytes(parsableBitArray.data, 0, parsableBitArray.readBits(8));
        parsableBitArray.setPosition(0);
        this.f8579g = 0L;
        if (this.f8576d) {
            parsableBitArray.skipBits(4);
            parsableBitArray.skipBits(1);
            parsableBitArray.skipBits(1);
            long readBits = (parsableBitArray.readBits(3) << 30) | (parsableBitArray.readBits(15) << 15) | parsableBitArray.readBits(15);
            parsableBitArray.skipBits(1);
            boolean z6 = this.f8578f;
            TimestampAdjuster timestampAdjuster = this.f8574b;
            if (!z6 && this.f8577e) {
                parsableBitArray.skipBits(4);
                parsableBitArray.skipBits(1);
                parsableBitArray.skipBits(1);
                parsableBitArray.skipBits(1);
                timestampAdjuster.adjustTsTimestamp((parsableBitArray.readBits(15) << 15) | (parsableBitArray.readBits(3) << 30) | parsableBitArray.readBits(15));
                this.f8578f = true;
            }
            this.f8579g = timestampAdjuster.adjustTsTimestamp(readBits);
        }
        long j7 = this.f8579g;
        InterfaceC0705j interfaceC0705j = this.f8573a;
        interfaceC0705j.packetStarted(j7, 4);
        interfaceC0705j.consume(parsableByteArray);
        interfaceC0705j.packetFinished(false);
    }

    public void seek() {
        this.f8578f = false;
        this.f8573a.seek();
    }
}
