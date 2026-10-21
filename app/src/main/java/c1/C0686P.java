package c1;

import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;

/* renamed from: c1.P, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0686P implements InterfaceC0680J {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableBitArray f8614a = new ParsableBitArray(new byte[4]);

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0688S f8615b;

    public C0686P(C0688S c0688s) {
        this.f8615b = c0688s;
    }

    @Override // c1.InterfaceC0680J
    public void consume(ParsableByteArray parsableByteArray) {
        C0688S c0688s;
        if (parsableByteArray.readUnsignedByte() == 0 && (parsableByteArray.readUnsignedByte() & 128) != 0) {
            parsableByteArray.skipBytes(6);
            int bytesLeft = parsableByteArray.bytesLeft() / 4;
            int i2 = 0;
            while (true) {
                c0688s = this.f8615b;
                if (i2 >= bytesLeft) {
                    break;
                }
                ParsableBitArray parsableBitArray = this.f8614a;
                parsableByteArray.readBytes(parsableBitArray, 4);
                int readBits = parsableBitArray.readBits(16);
                parsableBitArray.skipBits(3);
                if (readBits == 0) {
                    parsableBitArray.skipBits(13);
                } else {
                    int readBits2 = parsableBitArray.readBits(13);
                    if (c0688s.f8629i.get(readBits2) == null) {
                        c0688s.f8629i.put(readBits2, new C0681K(new C0687Q(c0688s, readBits2)));
                        c0688s.f8635o++;
                    }
                }
                i2++;
            }
            if (c0688s.f8621a != 2) {
                c0688s.f8629i.remove(0);
            }
        }
    }

    @Override // c1.InterfaceC0680J
    public void init(TimestampAdjuster timestampAdjuster, v0.F f3, C0692W c0692w) {
    }
}
