package e6;

import java.util.List;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class z {
    public z(kotlin.jvm.internal.g gVar) {
    }

    public static void a(long j7, C0870l c0870l, int i2, List list, int i7, int i8, List list2) {
        int i9;
        int i10;
        List list3;
        long j8;
        int i11;
        int i12 = i2;
        List list4 = list;
        List list5 = list2;
        if (i7 >= i8) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        for (int i13 = i7; i13 < i8; i13++) {
            if (((ByteString) list4.get(i13)).size() < i12) {
                throw new IllegalArgumentException("Failed requirement.");
            }
        }
        ByteString byteString = (ByteString) list.get(i7);
        ByteString byteString2 = (ByteString) list4.get(i8 - 1);
        if (i12 == byteString.size()) {
            int intValue = ((Number) list5.get(i7)).intValue();
            int i14 = i7 + 1;
            ByteString byteString3 = (ByteString) list4.get(i14);
            i9 = i14;
            i10 = intValue;
            byteString = byteString3;
        } else {
            i9 = i7;
            i10 = -1;
        }
        if (byteString.getByte(i12) == byteString2.getByte(i12)) {
            int min = Math.min(byteString.size(), byteString2.size());
            int i15 = 0;
            for (int i16 = i12; i16 < min && byteString.getByte(i16) == byteString2.getByte(i16); i16++) {
                i15++;
            }
            long j9 = 4;
            long size = (c0870l.size() / j9) + j7 + 2 + i15 + 1;
            c0870l.writeInt(-i15);
            c0870l.writeInt(i10);
            int i17 = i12 + i15;
            while (i12 < i17) {
                c0870l.writeInt(byteString.getByte(i12) & 255);
                i12++;
            }
            if (i9 + 1 == i8) {
                if (i17 != ((ByteString) list4.get(i9)).size()) {
                    throw new IllegalStateException("Check failed.");
                }
                c0870l.writeInt(((Number) list5.get(i9)).intValue());
                return;
            } else {
                C0870l c0870l2 = new C0870l();
                c0870l.writeInt(((int) ((c0870l2.size() / j9) + size)) * (-1));
                a(size, c0870l2, i17, list4, i9, i8, list5);
                c0870l.writeAll(c0870l2);
                return;
            }
        }
        int i18 = 1;
        for (int i19 = i9 + 1; i19 < i8; i19++) {
            if (((ByteString) list4.get(i19 - 1)).getByte(i12) != ((ByteString) list4.get(i19)).getByte(i12)) {
                i18++;
            }
        }
        long j10 = 4;
        long size2 = (c0870l.size() / j10) + j7 + 2 + (i18 * 2);
        c0870l.writeInt(i18);
        c0870l.writeInt(i10);
        for (int i20 = i9; i20 < i8; i20++) {
            int i21 = ((ByteString) list4.get(i20)).getByte(i12);
            if (i20 == i9 || i21 != ((ByteString) list4.get(i20 - 1)).getByte(i12)) {
                c0870l.writeInt(i21 & 255);
            }
        }
        C0870l c0870l3 = new C0870l();
        int i22 = i9;
        while (i22 < i8) {
            byte b7 = ((ByteString) list4.get(i22)).getByte(i12);
            int i23 = i22 + 1;
            int i24 = i23;
            while (true) {
                if (i24 >= i8) {
                    i24 = i8;
                    break;
                } else if (b7 != ((ByteString) list4.get(i24)).getByte(i12)) {
                    break;
                } else {
                    i24++;
                }
            }
            if (i23 == i24 && i12 + 1 == ((ByteString) list4.get(i22)).size()) {
                c0870l.writeInt(((Number) list5.get(i22)).intValue());
                list3 = list5;
                j8 = size2;
                i11 = i24;
            } else {
                c0870l.writeInt(((int) ((c0870l3.size() / j10) + size2)) * (-1));
                list3 = list5;
                j8 = size2;
                i11 = i24;
                a(j8, c0870l3, i12 + 1, list, i22, i11, list3);
                list4 = list;
            }
            size2 = j8;
            i22 = i11;
            list5 = list3;
        }
        c0870l.writeAll(c0870l3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d1, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final e6.A of(okio.ByteString... r14) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e6.z.of(okio.ByteString[]):e6.A");
    }
}
