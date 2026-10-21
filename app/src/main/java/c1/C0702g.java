package c1;

import android.util.SparseArray;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.List;

/* renamed from: c1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0702g implements InterfaceC0691V {

    /* renamed from: a, reason: collision with root package name */
    public final int f8729a;

    /* renamed from: b, reason: collision with root package name */
    public final List f8730b;

    public C0702g(int i2, List<Format> list) {
        this.f8729a = i2;
        this.f8730b = list;
    }

    public final List a(C0690U c0690u) {
        String str;
        int i2;
        boolean b7 = b(32);
        List list = this.f8730b;
        if (b7) {
            return list;
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(c0690u.f8648e);
        while (parsableByteArray.bytesLeft() > 0) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition() + parsableByteArray.readUnsignedByte();
            if (readUnsignedByte == 134) {
                ArrayList arrayList = new ArrayList();
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte() & 31;
                for (int i7 = 0; i7 < readUnsignedByte2; i7++) {
                    String readString = parsableByteArray.readString(3);
                    int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                    boolean z6 = (readUnsignedByte3 & 128) != 0;
                    if (z6) {
                        i2 = readUnsignedByte3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i2 = 1;
                    }
                    byte readUnsignedByte4 = (byte) parsableByteArray.readUnsignedByte();
                    parsableByteArray.skipBytes(1);
                    arrayList.add(new Format.Builder().setSampleMimeType(str).setLanguage(readString).setAccessibilityChannel(i2).setInitializationData(z6 ? CodecSpecificDataUtil.buildCea708InitializationData((readUnsignedByte4 & 64) != 0) : null).build());
                }
                list = arrayList;
            }
            parsableByteArray.setPosition(position);
        }
        return list;
    }

    public final boolean b(int i2) {
        return (i2 & this.f8729a) != 0;
    }

    public SparseArray<InterfaceC0693X> createInitialPayloadReaders() {
        return new SparseArray<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c1.InterfaceC0693X createPayloadReader(int r5, c1.C0690U r6) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c1.C0702g.createPayloadReader(int, c1.U):c1.X");
    }
}
