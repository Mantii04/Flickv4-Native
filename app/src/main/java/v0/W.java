package v0;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes.dex */
public final class W {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f20410a = new ParsableByteArray(10);

    public Metadata peekId3Data(D d7, J0.h hVar, int i2) throws IOException {
        Metadata metadata = null;
        int i7 = 0;
        loop0: while (true) {
            int i8 = 0;
            do {
                int i9 = i8 % 10;
                int i10 = i9 + 10;
                ParsableByteArray parsableByteArray = this.f20410a;
                if (i9 == 0 && i8 != 0) {
                    System.arraycopy(parsableByteArray.getData(), 10, parsableByteArray.getData(), 0, 9);
                }
                int i11 = i8 == 0 ? 10 : 1;
                try {
                    d7.peekFully(parsableByteArray.getData(), i10 - i11, i11);
                    parsableByteArray.setPosition(i9);
                    parsableByteArray.setLimit(i10);
                    if (parsableByteArray.peekUnsignedInt24() != 4801587) {
                        if (Z.getFrameSize(parsableByteArray.peekInt()) != -1) {
                            break loop0;
                        }
                        if (i8 == 0) {
                            parsableByteArray.ensureCapacity(20);
                        }
                        i8++;
                    } else {
                        int position = parsableByteArray.getPosition();
                        parsableByteArray.skipBytes(6);
                        int readSynchSafeInt = parsableByteArray.readSynchSafeInt();
                        int i12 = readSynchSafeInt + 10;
                        if (metadata == null) {
                            byte[] bArr = new byte[i12];
                            System.arraycopy(parsableByteArray.getData(), position, bArr, 0, 10);
                            d7.peekFully(bArr, 10, readSynchSafeInt);
                            metadata = new J0.j(hVar).decode(bArr, i12);
                        } else {
                            d7.advancePeekPosition(readSynchSafeInt);
                        }
                        i7 += i12;
                    }
                } catch (EOFException unused) {
                }
            } while (i8 <= i2);
        }
        d7.resetPeekPosition();
        d7.advancePeekPosition(i7);
        return metadata;
    }
}
