package c1;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: c1.Q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0687Q implements InterfaceC0680J {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableBitArray f8616a = new ParsableBitArray(new byte[5]);

    /* renamed from: b, reason: collision with root package name */
    public final SparseArray f8617b = new SparseArray();

    /* renamed from: c, reason: collision with root package name */
    public final SparseIntArray f8618c = new SparseIntArray();

    /* renamed from: d, reason: collision with root package name */
    public final int f8619d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0688S f8620e;

    public C0687Q(C0688S c0688s, int i2) {
        this.f8620e = c0688s;
        this.f8619d = i2;
    }

    @Override // c1.InterfaceC0680J
    public void consume(ParsableByteArray parsableByteArray) {
        TimestampAdjuster timestampAdjuster;
        SparseBooleanArray sparseBooleanArray;
        SparseArray sparseArray;
        TimestampAdjuster timestampAdjuster2;
        int i2;
        int i7;
        char c7;
        TimestampAdjuster timestampAdjuster3;
        int i8;
        int i9;
        if (parsableByteArray.readUnsignedByte() != 2) {
            return;
        }
        C0688S c0688s = this.f8620e;
        int i10 = c0688s.f8621a;
        List list = c0688s.f8624d;
        if (i10 == 1 || i10 == 2 || c0688s.f8635o == 1) {
            timestampAdjuster = (TimestampAdjuster) list.get(0);
        } else {
            timestampAdjuster = new TimestampAdjuster(((TimestampAdjuster) list.get(0)).getFirstSampleTimestampUs());
            list.add(timestampAdjuster);
        }
        if ((parsableByteArray.readUnsignedByte() & 128) == 0) {
            return;
        }
        parsableByteArray.skipBytes(1);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int i11 = 3;
        parsableByteArray.skipBytes(3);
        ParsableBitArray parsableBitArray = this.f8616a;
        parsableByteArray.readBytes(parsableBitArray, 2);
        parsableBitArray.skipBits(3);
        int i12 = 13;
        c0688s.f8641u = parsableBitArray.readBits(13);
        parsableByteArray.readBytes(parsableBitArray, 2);
        int i13 = 4;
        parsableBitArray.skipBits(4);
        parsableByteArray.skipBytes(parsableBitArray.readBits(12));
        InterfaceC0691V interfaceC0691V = c0688s.f8627g;
        int i14 = c0688s.f8621a;
        if (i14 == 2 && c0688s.f8639s == null) {
            InterfaceC0693X createPayloadReader = ((C0702g) interfaceC0691V).createPayloadReader(21, new C0690U(21, null, 0, null, Util.EMPTY_BYTE_ARRAY));
            c0688s.f8639s = createPayloadReader;
            if (createPayloadReader != null) {
                createPayloadReader.init(timestampAdjuster, c0688s.f8634n, new C0692W(readUnsignedShort, 21, 8192));
            }
        }
        SparseArray sparseArray2 = this.f8617b;
        sparseArray2.clear();
        SparseIntArray sparseIntArray = this.f8618c;
        sparseIntArray.clear();
        int bytesLeft = parsableByteArray.bytesLeft();
        while (true) {
            sparseBooleanArray = c0688s.f8630j;
            if (bytesLeft <= 0) {
                break;
            }
            parsableByteArray.readBytes(parsableBitArray, 5);
            int readBits = parsableBitArray.readBits(8);
            parsableBitArray.skipBits(i11);
            int readBits2 = parsableBitArray.readBits(i12);
            parsableBitArray.skipBits(i13);
            int readBits3 = parsableBitArray.readBits(12);
            int position = parsableByteArray.getPosition();
            int i15 = position + readBits3;
            int i16 = -1;
            String str = null;
            ArrayList arrayList = null;
            int i17 = 0;
            ParsableBitArray parsableBitArray2 = parsableBitArray;
            while (true) {
                if (parsableByteArray.getPosition() >= i15) {
                    i7 = bytesLeft;
                    break;
                }
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                i7 = bytesLeft;
                int position2 = parsableByteArray.getPosition() + parsableByteArray.readUnsignedByte();
                if (position2 > i15) {
                    break;
                }
                InterfaceC0691V interfaceC0691V2 = interfaceC0691V;
                if (readUnsignedByte == 5) {
                    long readUnsignedInt = parsableByteArray.readUnsignedInt();
                    if (readUnsignedInt == 1094921523) {
                        i16 = 129;
                    } else if (readUnsignedInt == 1161904947) {
                        i16 = 135;
                    } else {
                        if (readUnsignedInt != 1094921524) {
                            if (readUnsignedInt == 1212503619) {
                                i16 = 36;
                            }
                        }
                        i16 = 172;
                    }
                    timestampAdjuster3 = timestampAdjuster;
                    i8 = readUnsignedShort;
                    i9 = position2;
                } else if (readUnsignedByte == 106) {
                    timestampAdjuster3 = timestampAdjuster;
                    i8 = readUnsignedShort;
                    i9 = position2;
                    i16 = 129;
                } else if (readUnsignedByte == 122) {
                    timestampAdjuster3 = timestampAdjuster;
                    i8 = readUnsignedShort;
                    i9 = position2;
                    i16 = 135;
                } else if (readUnsignedByte == 127) {
                    int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                    if (readUnsignedByte2 != 21) {
                        if (readUnsignedByte2 == 14) {
                            i16 = 136;
                        } else if (readUnsignedByte2 == 33) {
                            i16 = 139;
                        }
                        timestampAdjuster3 = timestampAdjuster;
                        i8 = readUnsignedShort;
                        i9 = position2;
                    }
                    i16 = 172;
                    timestampAdjuster3 = timestampAdjuster;
                    i8 = readUnsignedShort;
                    i9 = position2;
                } else {
                    if (readUnsignedByte == 123) {
                        timestampAdjuster3 = timestampAdjuster;
                        i8 = readUnsignedShort;
                        i16 = 138;
                    } else if (readUnsignedByte == 10) {
                        String trim = parsableByteArray.readString(3).trim();
                        i17 = parsableByteArray.readUnsignedByte();
                        timestampAdjuster3 = timestampAdjuster;
                        i8 = readUnsignedShort;
                        str = trim;
                    } else {
                        if (readUnsignedByte == 89) {
                            ArrayList arrayList2 = new ArrayList();
                            while (parsableByteArray.getPosition() < position2) {
                                String trim2 = parsableByteArray.readString(3).trim();
                                int i18 = position2;
                                int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                                TimestampAdjuster timestampAdjuster4 = timestampAdjuster;
                                byte[] bArr = new byte[4];
                                parsableByteArray.readBytes(bArr, 0, 4);
                                arrayList2.add(new C0689T(trim2, readUnsignedByte3, bArr));
                                position2 = i18;
                                timestampAdjuster = timestampAdjuster4;
                                readUnsignedShort = readUnsignedShort;
                            }
                            timestampAdjuster3 = timestampAdjuster;
                            i8 = readUnsignedShort;
                            i9 = position2;
                            arrayList = arrayList2;
                            i16 = 89;
                        } else {
                            timestampAdjuster3 = timestampAdjuster;
                            i8 = readUnsignedShort;
                            i9 = position2;
                            if (readUnsignedByte == 111) {
                                i16 = 257;
                            }
                        }
                        parsableByteArray.skipBytes(i9 - parsableByteArray.getPosition());
                        timestampAdjuster = timestampAdjuster3;
                        bytesLeft = i7;
                        interfaceC0691V = interfaceC0691V2;
                        readUnsignedShort = i8;
                    }
                    i9 = position2;
                }
                parsableByteArray.skipBytes(i9 - parsableByteArray.getPosition());
                timestampAdjuster = timestampAdjuster3;
                bytesLeft = i7;
                interfaceC0691V = interfaceC0691V2;
                readUnsignedShort = i8;
            }
            TimestampAdjuster timestampAdjuster5 = timestampAdjuster;
            int i19 = readUnsignedShort;
            InterfaceC0691V interfaceC0691V3 = interfaceC0691V;
            parsableByteArray.setPosition(i15);
            C0690U c0690u = new C0690U(i16, str, i17, arrayList, Arrays.copyOfRange(parsableByteArray.getData(), position, i15));
            if (readBits == 6 || readBits == 5) {
                readBits = c0690u.f8644a;
            }
            bytesLeft = i7 - (readBits3 + 5);
            int i20 = i14 == 2 ? readBits : readBits2;
            if (sparseBooleanArray.get(i20)) {
                c7 = 21;
            } else {
                c7 = 21;
                InterfaceC0693X createPayloadReader2 = (i14 == 2 && readBits == 21) ? c0688s.f8639s : ((C0702g) interfaceC0691V3).createPayloadReader(readBits, c0690u);
                if (i14 != 2 || readBits2 < sparseIntArray.get(i20, 8192)) {
                    sparseIntArray.put(i20, readBits2);
                    sparseArray2.put(i20, createPayloadReader2);
                }
            }
            i13 = 4;
            timestampAdjuster = timestampAdjuster5;
            parsableBitArray = parsableBitArray2;
            interfaceC0691V = interfaceC0691V3;
            readUnsignedShort = i19;
            i11 = 3;
            i12 = 13;
        }
        TimestampAdjuster timestampAdjuster6 = timestampAdjuster;
        int i21 = readUnsignedShort;
        int size = sparseIntArray.size();
        int i22 = 0;
        while (true) {
            sparseArray = c0688s.f8629i;
            if (i22 >= size) {
                break;
            }
            int keyAt = sparseIntArray.keyAt(i22);
            int valueAt = sparseIntArray.valueAt(i22);
            sparseBooleanArray.put(keyAt, true);
            c0688s.f8631k.put(valueAt, true);
            InterfaceC0693X interfaceC0693X = (InterfaceC0693X) sparseArray2.valueAt(i22);
            if (interfaceC0693X != null) {
                if (interfaceC0693X != c0688s.f8639s) {
                    v0.F f3 = c0688s.f8634n;
                    i2 = i21;
                    C0692W c0692w = new C0692W(i2, keyAt, 8192);
                    timestampAdjuster2 = timestampAdjuster6;
                    interfaceC0693X.init(timestampAdjuster2, f3, c0692w);
                } else {
                    timestampAdjuster2 = timestampAdjuster6;
                    i2 = i21;
                }
                sparseArray.put(valueAt, interfaceC0693X);
            } else {
                timestampAdjuster2 = timestampAdjuster6;
                i2 = i21;
            }
            i22++;
            timestampAdjuster6 = timestampAdjuster2;
            i21 = i2;
        }
        if (i14 == 2) {
            if (c0688s.f8636p) {
                return;
            }
            c0688s.f8634n.endTracks();
            c0688s.f8635o = 0;
            c0688s.f8636p = true;
            return;
        }
        sparseArray.remove(this.f8619d);
        int i23 = i14 == 1 ? 0 : c0688s.f8635o - 1;
        c0688s.f8635o = i23;
        if (i23 == 0) {
            c0688s.f8634n.endTracks();
            c0688s.f8636p = true;
        }
    }

    @Override // c1.InterfaceC0680J
    public void init(TimestampAdjuster timestampAdjuster, v0.F f3, C0692W c0692w) {
    }
}
