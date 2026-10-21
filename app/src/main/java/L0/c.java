package L0;

import androidx.media3.common.C;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class c extends E0.d {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f1827a = new ParsableByteArray();

    /* renamed from: b, reason: collision with root package name */
    public final ParsableBitArray f1828b = new ParsableBitArray();

    /* renamed from: c, reason: collision with root package name */
    public TimestampAdjuster f1829c;

    @Override // E0.d
    public Metadata decode(E0.b bVar, ByteBuffer byteBuffer) {
        int i2;
        Metadata.Entry eVar;
        long j7;
        int i7 = 1;
        TimestampAdjuster timestampAdjuster = this.f1829c;
        if (timestampAdjuster == null || bVar.f923b != timestampAdjuster.getTimestampOffsetUs()) {
            TimestampAdjuster timestampAdjuster2 = new TimestampAdjuster(bVar.timeUs);
            this.f1829c = timestampAdjuster2;
            timestampAdjuster2.adjustSampleTimestamp(bVar.timeUs - bVar.f923b);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        ParsableByteArray parsableByteArray = this.f1827a;
        parsableByteArray.reset(array, limit);
        ParsableBitArray parsableBitArray = this.f1828b;
        parsableBitArray.reset(array, limit);
        parsableBitArray.skipBits(39);
        long readBits = (parsableBitArray.readBits(1) << 32) | parsableBitArray.readBits(32);
        parsableBitArray.skipBits(20);
        int readBits2 = parsableBitArray.readBits(12);
        int readBits3 = parsableBitArray.readBits(8);
        parsableByteArray.skipBytes(14);
        if (readBits3 == 0) {
            i2 = 1;
            eVar = new e();
        } else if (readBits3 == 255) {
            i2 = 1;
            long readUnsignedInt = parsableByteArray.readUnsignedInt();
            int i8 = readBits2 - 4;
            parsableByteArray.readBytes(new byte[i8], 0, i8);
            eVar = new a(readUnsignedInt, readBits);
        } else if (readBits3 == 4) {
            i2 = 1;
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            ArrayList arrayList = new ArrayList(readUnsignedByte);
            for (int i9 = 0; i9 < readUnsignedByte; i9++) {
                parsableByteArray.readUnsignedInt();
                boolean z6 = (parsableByteArray.readUnsignedByte() & 128) != 0;
                ArrayList arrayList2 = new ArrayList();
                if (!z6) {
                    int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                    boolean z7 = (readUnsignedByte2 & 64) != 0;
                    boolean z8 = (readUnsignedByte2 & 32) != 0;
                    if (z7) {
                        parsableByteArray.readUnsignedInt();
                    }
                    if (!z7) {
                        int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                        ArrayList arrayList3 = new ArrayList(readUnsignedByte3);
                        for (int i10 = 0; i10 < readUnsignedByte3; i10++) {
                            parsableByteArray.readUnsignedByte();
                            parsableByteArray.readUnsignedInt();
                            arrayList3.add(new J3.b());
                        }
                        arrayList2 = arrayList3;
                    }
                    if (z8) {
                        parsableByteArray.readUnsignedByte();
                        parsableByteArray.readUnsignedInt();
                    }
                    parsableByteArray.readUnsignedShort();
                    parsableByteArray.readUnsignedByte();
                    parsableByteArray.readUnsignedByte();
                }
                arrayList.add(new f(arrayList2));
            }
            eVar = new g(arrayList);
        } else if (readBits3 != 5) {
            if (readBits3 != 6) {
                eVar = null;
            } else {
                TimestampAdjuster timestampAdjuster3 = this.f1829c;
                long a7 = h.a(readBits, parsableByteArray);
                eVar = new h(a7, timestampAdjuster3.adjustTsTimestamp(a7));
            }
            i2 = 1;
        } else {
            TimestampAdjuster timestampAdjuster4 = this.f1829c;
            parsableByteArray.readUnsignedInt();
            boolean z9 = (parsableByteArray.readUnsignedByte() & 128) != 0;
            List list = Collections.EMPTY_LIST;
            if (z9) {
                i2 = 1;
                j7 = C.TIME_UNSET;
            } else {
                int readUnsignedByte4 = parsableByteArray.readUnsignedByte();
                boolean z10 = (readUnsignedByte4 & 64) != 0;
                boolean z11 = (32 & readUnsignedByte4) != 0;
                boolean z12 = (readUnsignedByte4 & 16) != 0;
                long a8 = (!z10 || z12) ? C.TIME_UNSET : h.a(readBits, parsableByteArray);
                if (!z10) {
                    int readUnsignedByte5 = parsableByteArray.readUnsignedByte();
                    ArrayList arrayList4 = new ArrayList(readUnsignedByte5);
                    int i11 = 0;
                    while (i11 < readUnsignedByte5) {
                        parsableByteArray.readUnsignedByte();
                        int i12 = i7;
                        timestampAdjuster4.adjustTsTimestamp(!z12 ? h.a(readBits, parsableByteArray) : C.TIME_UNSET);
                        arrayList4.add(new J3.b());
                        i11++;
                        i7 = i12;
                    }
                    list = arrayList4;
                }
                i2 = i7;
                if (z11) {
                    parsableByteArray.readUnsignedByte();
                    parsableByteArray.readUnsignedInt();
                }
                parsableByteArray.readUnsignedShort();
                parsableByteArray.readUnsignedByte();
                parsableByteArray.readUnsignedByte();
                j7 = a8;
            }
            eVar = new d(list, j7, timestampAdjuster4.adjustTsTimestamp(j7));
        }
        if (eVar == null) {
            return new Metadata(new Metadata.Entry[0]);
        }
        Metadata.Entry[] entryArr = new Metadata.Entry[i2];
        entryArr[0] = eVar;
        return new Metadata(entryArr);
    }
}
