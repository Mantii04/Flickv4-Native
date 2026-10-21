package P0;

import androidx.media3.common.util.ParsableByteArray;
import s0.C1609e;

/* renamed from: P0.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0222k implements InterfaceC0218g {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f2588a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2589b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2590c;

    /* renamed from: d, reason: collision with root package name */
    public int f2591d;

    /* renamed from: e, reason: collision with root package name */
    public int f2592e;

    public C0222k(C1609e c1609e) {
        ParsableByteArray parsableByteArray = c1609e.f19912b;
        this.f2588a = parsableByteArray;
        parsableByteArray.setPosition(12);
        this.f2590c = parsableByteArray.readUnsignedIntToInt() & 255;
        this.f2589b = parsableByteArray.readUnsignedIntToInt();
    }

    @Override // P0.InterfaceC0218g
    public int getFixedSampleSize() {
        return -1;
    }

    @Override // P0.InterfaceC0218g
    public int getSampleCount() {
        return this.f2589b;
    }

    @Override // P0.InterfaceC0218g
    public int readNextSampleSize() {
        ParsableByteArray parsableByteArray = this.f2588a;
        int i2 = this.f2590c;
        if (i2 == 8) {
            return parsableByteArray.readUnsignedByte();
        }
        if (i2 == 16) {
            return parsableByteArray.readUnsignedShort();
        }
        int i7 = this.f2591d;
        this.f2591d = i7 + 1;
        if (i7 % 2 != 0) {
            return this.f2592e & 15;
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        this.f2592e = readUnsignedByte;
        return (readUnsignedByte & 240) >> 4;
    }
}
