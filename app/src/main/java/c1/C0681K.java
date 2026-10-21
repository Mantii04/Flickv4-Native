package c1;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;

/* renamed from: c1.K, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0681K implements InterfaceC0693X {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0680J f8591a;

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f8592b = new ParsableByteArray(32);

    /* renamed from: c, reason: collision with root package name */
    public int f8593c;

    /* renamed from: d, reason: collision with root package name */
    public int f8594d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8595e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8596f;

    public C0681K(InterfaceC0680J interfaceC0680J) {
        this.f8591a = interfaceC0680J;
    }

    @Override // c1.InterfaceC0693X
    public void consume(ParsableByteArray parsableByteArray, int i2) {
        boolean z6 = (i2 & 1) != 0;
        int position = z6 ? parsableByteArray.getPosition() + parsableByteArray.readUnsignedByte() : -1;
        if (this.f8596f) {
            if (!z6) {
                return;
            }
            this.f8596f = false;
            parsableByteArray.setPosition(position);
            this.f8594d = 0;
        }
        while (parsableByteArray.bytesLeft() > 0) {
            int i7 = this.f8594d;
            ParsableByteArray parsableByteArray2 = this.f8592b;
            if (i7 < 3) {
                if (i7 == 0) {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    parsableByteArray.setPosition(parsableByteArray.getPosition() - 1);
                    if (readUnsignedByte == 255) {
                        this.f8596f = true;
                        return;
                    }
                }
                int min = Math.min(parsableByteArray.bytesLeft(), 3 - this.f8594d);
                parsableByteArray.readBytes(parsableByteArray2.getData(), this.f8594d, min);
                int i8 = this.f8594d + min;
                this.f8594d = i8;
                if (i8 == 3) {
                    parsableByteArray2.setPosition(0);
                    parsableByteArray2.setLimit(3);
                    parsableByteArray2.skipBytes(1);
                    int readUnsignedByte2 = parsableByteArray2.readUnsignedByte();
                    int readUnsignedByte3 = parsableByteArray2.readUnsignedByte();
                    this.f8595e = (readUnsignedByte2 & 128) != 0;
                    this.f8593c = (((readUnsignedByte2 & 15) << 8) | readUnsignedByte3) + 3;
                    int capacity = parsableByteArray2.capacity();
                    int i9 = this.f8593c;
                    if (capacity < i9) {
                        parsableByteArray2.ensureCapacity(Math.min(4098, Math.max(i9, parsableByteArray2.capacity() * 2)));
                    }
                }
            } else {
                int min2 = Math.min(parsableByteArray.bytesLeft(), this.f8593c - this.f8594d);
                parsableByteArray.readBytes(parsableByteArray2.getData(), this.f8594d, min2);
                int i10 = this.f8594d + min2;
                this.f8594d = i10;
                int i11 = this.f8593c;
                if (i10 != i11) {
                    continue;
                } else {
                    if (!this.f8595e) {
                        parsableByteArray2.setLimit(i11);
                    } else {
                        if (Util.crc32(parsableByteArray2.getData(), 0, this.f8593c, -1) != 0) {
                            this.f8596f = true;
                            return;
                        }
                        parsableByteArray2.setLimit(this.f8593c - 4);
                    }
                    parsableByteArray2.setPosition(0);
                    this.f8591a.consume(parsableByteArray2);
                    this.f8594d = 0;
                }
            }
        }
    }

    @Override // c1.InterfaceC0693X
    public void init(TimestampAdjuster timestampAdjuster, v0.F f3, C0692W c0692w) {
        this.f8591a.init(timestampAdjuster, f3, c0692w);
        this.f8596f = true;
    }

    @Override // c1.InterfaceC0693X
    public void seek() {
        this.f8596f = true;
    }
}
