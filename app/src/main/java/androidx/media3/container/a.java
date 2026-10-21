package androidx.media3.container;

import P3.v;
import androidx.media3.common.util.ParsableBitArray;
import java.nio.ByteBuffer;
import s0.w;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7153a;

    public a(b bVar, w wVar) {
        int i2 = wVar.f19988a;
        v.checkArgument(i2 == 6 || i2 == 3);
        ByteBuffer byteBuffer = wVar.f19989b;
        byte[] bArr = new byte[Math.min(4, byteBuffer.remaining())];
        byteBuffer.asReadOnlyBuffer().get(bArr);
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        if (bVar.f7154a) {
            throw new ObuParser$NotYetImplementedException(0);
        }
        if (parsableBitArray.readBit()) {
            this.f7153a = false;
            return;
        }
        int readBits = parsableBitArray.readBits(2);
        boolean readBit = parsableBitArray.readBit();
        if (bVar.f7155b) {
            throw new ObuParser$NotYetImplementedException(0);
        }
        if (!readBit) {
            this.f7153a = true;
            return;
        }
        boolean readBit2 = (readBits == 3 || readBits == 0) ? true : parsableBitArray.readBit();
        parsableBitArray.skipBit();
        if (!bVar.f7157d) {
            throw new ObuParser$NotYetImplementedException(0);
        }
        if (parsableBitArray.readBit()) {
            if (!bVar.f7158e) {
                throw new ObuParser$NotYetImplementedException(0);
            }
            parsableBitArray.skipBit();
        }
        if (bVar.f7156c) {
            throw new ObuParser$NotYetImplementedException(0);
        }
        if (readBits != 3) {
            parsableBitArray.skipBit();
        }
        parsableBitArray.skipBits(bVar.f7159f);
        if (readBits != 2 && readBits != 0 && !readBit2) {
            parsableBitArray.skipBits(3);
        }
        this.f7153a = ((readBits == 3 || readBits == 0) ? 255 : parsableBitArray.readBits(8)) != 0;
    }

    public static a parse(b bVar, w wVar) {
        try {
            return new a(bVar, wVar);
        } catch (ObuParser$NotYetImplementedException unused) {
            return null;
        }
    }

    public boolean isDependedOn() {
        return this.f7153a;
    }
}
