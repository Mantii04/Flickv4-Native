package U0;

import S0.o;
import S0.r;
import S0.s;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class i implements s {

    /* renamed from: h, reason: collision with root package name */
    public static final byte[] f3782h = {0, 7, 8, 15};

    /* renamed from: i, reason: collision with root package name */
    public static final byte[] f3783i = {0, 119, -120, -1};

    /* renamed from: j, reason: collision with root package name */
    public static final byte[] f3784j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, ByteSourceJsonBootstrapper.UTF8_BOM_2, -52, -35, -18, -1};

    /* renamed from: a, reason: collision with root package name */
    public final Paint f3785a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f3786b;

    /* renamed from: c, reason: collision with root package name */
    public final Canvas f3787c;

    /* renamed from: d, reason: collision with root package name */
    public final b f3788d;

    /* renamed from: e, reason: collision with root package name */
    public final a f3789e;

    /* renamed from: f, reason: collision with root package name */
    public final h f3790f;

    /* renamed from: g, reason: collision with root package name */
    public Bitmap f3791g;

    public i(List<byte[]> list) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(list.get(0));
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        Paint paint = new Paint();
        this.f3785a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f3786b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f3787c = new Canvas();
        this.f3788d = new b(AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 575, 0, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 0, 575);
        this.f3789e = new a(0, new int[]{0, -1, -16777216, -8421505}, b(), c());
        this.f3790f = new h(readUnsignedShort, readUnsignedShort2);
    }

    public static byte[] a(int i2, int i7, ParsableBitArray parsableBitArray) {
        byte[] bArr = new byte[i2];
        for (int i8 = 0; i8 < i2; i8++) {
            bArr[i8] = (byte) parsableBitArray.readBits(i7);
        }
        return bArr;
    }

    public static int[] b() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i2 = 1; i2 < 16; i2++) {
            if (i2 < 8) {
                iArr[i2] = d(255, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i2] = d(255, (i2 & 1) != 0 ? 127 : 0, (i2 & 2) != 0 ? 127 : 0, (i2 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    public static int[] c() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (i2 < 8) {
                iArr[i2] = d(63, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) == 0 ? 0 : 255);
            } else {
                int i7 = i2 & 136;
                if (i7 == 0) {
                    iArr[i2] = d(255, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i7 == 8) {
                    iArr[i2] = d(127, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i7 == 128) {
                    iArr[i2] = d(255, ((i2 & 1) != 0 ? 43 : 0) + 127 + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + 127 + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + 127 + ((i2 & 64) == 0 ? 0 : 85));
                } else if (i7 == 136) {
                    iArr[i2] = d(255, ((i2 & 1) != 0 ? 43 : 0) + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + ((i2 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    public static int d(int i2, int i7, int i8, int i9) {
        return (i2 << 24) | (i7 << 16) | (i8 << 8) | i9;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01cf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01f8 A[LOOP:3: B:87:0x0160->B:98:0x01f8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01f4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(byte[] r22, int[] r23, int r24, int r25, int r26, android.graphics.Paint r27, android.graphics.Canvas r28) {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: U0.i.e(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    public static a f(ParsableBitArray parsableBitArray, int i2) {
        int readBits;
        int i7;
        int readBits2;
        int i8;
        int i9;
        int i10 = 8;
        int readBits3 = parsableBitArray.readBits(8);
        parsableBitArray.skipBits(8);
        int i11 = 2;
        int i12 = i2 - 2;
        int i13 = 0;
        int[] iArr = {0, -1, -16777216, -8421505};
        int[] b7 = b();
        int[] c7 = c();
        while (i12 > 0) {
            int readBits4 = parsableBitArray.readBits(i10);
            int readBits5 = parsableBitArray.readBits(i10);
            int[] iArr2 = (readBits5 & 128) != 0 ? iArr : (readBits5 & 64) != 0 ? b7 : c7;
            if ((readBits5 & 1) != 0) {
                i8 = parsableBitArray.readBits(i10);
                i9 = parsableBitArray.readBits(i10);
                readBits = parsableBitArray.readBits(i10);
                readBits2 = parsableBitArray.readBits(i10);
                i7 = i12 - 6;
            } else {
                int readBits6 = parsableBitArray.readBits(6) << i11;
                int readBits7 = parsableBitArray.readBits(4) << 4;
                readBits = parsableBitArray.readBits(4) << 4;
                i7 = i12 - 4;
                readBits2 = parsableBitArray.readBits(i11) << 6;
                i8 = readBits6;
                i9 = readBits7;
            }
            if (i8 == 0) {
                i9 = i13;
                readBits = i9;
                readBits2 = 255;
            }
            double d7 = i8;
            double d8 = i9 - 128;
            double d9 = readBits - 128;
            iArr2[readBits4] = d((byte) (255 - (readBits2 & 255)), Util.constrainValue((int) ((1.402d * d8) + d7), 0, 255), Util.constrainValue((int) ((d7 - (0.34414d * d9)) - (d8 * 0.71414d)), 0, 255), Util.constrainValue((int) ((d9 * 1.772d) + d7), 0, 255));
            i12 = i7;
            i13 = 0;
            readBits3 = readBits3;
            c7 = c7;
            i10 = 8;
            i11 = 2;
        }
        return new a(readBits3, iArr, b7, c7);
    }

    public static c g(ParsableBitArray parsableBitArray) {
        byte[] bArr;
        int readBits = parsableBitArray.readBits(16);
        parsableBitArray.skipBits(4);
        int readBits2 = parsableBitArray.readBits(2);
        boolean readBit = parsableBitArray.readBit();
        parsableBitArray.skipBits(1);
        byte[] bArr2 = Util.EMPTY_BYTE_ARRAY;
        if (readBits2 == 1) {
            parsableBitArray.skipBits(parsableBitArray.readBits(8) * 16);
        } else if (readBits2 == 0) {
            int readBits3 = parsableBitArray.readBits(16);
            int readBits4 = parsableBitArray.readBits(16);
            if (readBits3 > 0) {
                bArr2 = new byte[readBits3];
                parsableBitArray.readBytes(bArr2, 0, readBits3);
            }
            if (readBits4 > 0) {
                bArr = new byte[readBits4];
                parsableBitArray.readBytes(bArr, 0, readBits4);
                return new c(readBits, readBit, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new c(readBits, readBit, bArr2, bArr);
    }

    @Override // S0.s
    public int getCueReplacementBehavior() {
        return 2;
    }

    @Override // S0.s
    public void parse(byte[] bArr, int i2, int i7, r rVar, Consumer<S0.c> consumer) {
        boolean z6;
        h hVar;
        S0.c cVar;
        int i8;
        char c7;
        char c8;
        char c9;
        int i9;
        ArrayList arrayList;
        h hVar2;
        int i10;
        f fVar;
        int i11;
        int i12;
        int i13;
        int i14;
        f fVar2;
        int readBits;
        int readBits2;
        int i15;
        int i16;
        int i17;
        int i18;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr, i2 + i7);
        parsableBitArray.setPosition(i2);
        while (true) {
            int bitsLeft = parsableBitArray.bitsLeft();
            z6 = true;
            hVar = this.f3790f;
            if (bitsLeft >= 48 && parsableBitArray.readBits(8) == 15) {
                int readBits3 = parsableBitArray.readBits(8);
                int readBits4 = parsableBitArray.readBits(16);
                int readBits5 = parsableBitArray.readBits(16);
                int bytePosition = parsableBitArray.getBytePosition() + readBits5;
                if (readBits5 * 8 > parsableBitArray.bitsLeft()) {
                    Log.w("DvbParser", "Data field length exceeds limit");
                    parsableBitArray.skipBits(parsableBitArray.bitsLeft());
                } else {
                    switch (readBits3) {
                        case 16:
                            if (readBits4 == hVar.f3773a) {
                                d dVar = hVar.f3781i;
                                int readBits6 = parsableBitArray.readBits(8);
                                int readBits7 = parsableBitArray.readBits(4);
                                int readBits8 = parsableBitArray.readBits(2);
                                parsableBitArray.skipBits(2);
                                int i19 = readBits5 - 2;
                                SparseArray sparseArray = new SparseArray();
                                while (i19 > 0) {
                                    int readBits9 = parsableBitArray.readBits(8);
                                    parsableBitArray.skipBits(8);
                                    i19 -= 6;
                                    sparseArray.put(readBits9, new e(parsableBitArray.readBits(16), parsableBitArray.readBits(16)));
                                }
                                d dVar2 = new d(readBits6, readBits7, readBits8, sparseArray);
                                if (dVar2.f3757b == 0) {
                                    if (dVar != null && dVar.f3756a != dVar2.f3756a) {
                                        hVar.f3781i = dVar2;
                                        break;
                                    }
                                } else {
                                    hVar.f3781i = dVar2;
                                    hVar.f3775c.clear();
                                    hVar.f3776d.clear();
                                    hVar.f3777e.clear();
                                    break;
                                }
                            }
                            break;
                        case 17:
                            d dVar3 = hVar.f3781i;
                            if (readBits4 == hVar.f3773a && dVar3 != null) {
                                int readBits10 = parsableBitArray.readBits(8);
                                parsableBitArray.skipBits(4);
                                boolean readBit = parsableBitArray.readBit();
                                parsableBitArray.skipBits(3);
                                int readBits11 = parsableBitArray.readBits(16);
                                int readBits12 = parsableBitArray.readBits(16);
                                int readBits13 = parsableBitArray.readBits(3);
                                int readBits14 = parsableBitArray.readBits(3);
                                parsableBitArray.skipBits(2);
                                int readBits15 = parsableBitArray.readBits(8);
                                int readBits16 = parsableBitArray.readBits(8);
                                int readBits17 = parsableBitArray.readBits(4);
                                int readBits18 = parsableBitArray.readBits(2);
                                parsableBitArray.skipBits(2);
                                int i20 = readBits5 - 10;
                                SparseArray sparseArray2 = new SparseArray();
                                while (i20 > 0) {
                                    int readBits19 = parsableBitArray.readBits(16);
                                    int readBits20 = parsableBitArray.readBits(2);
                                    int readBits21 = parsableBitArray.readBits(2);
                                    int readBits22 = parsableBitArray.readBits(12);
                                    parsableBitArray.skipBits(4);
                                    int readBits23 = parsableBitArray.readBits(12);
                                    int i21 = i20 - 6;
                                    if (readBits20 == 1 || readBits20 == 2) {
                                        i20 -= 8;
                                        readBits = parsableBitArray.readBits(8);
                                        readBits2 = parsableBitArray.readBits(8);
                                    } else {
                                        i20 = i21;
                                        readBits = 0;
                                        readBits2 = 0;
                                    }
                                    sparseArray2.put(readBits19, new g(readBits20, readBits21, readBits22, readBits23, readBits, readBits2));
                                }
                                f fVar3 = new f(readBits10, readBit, readBits11, readBits12, readBits13, readBits14, readBits15, readBits16, readBits17, readBits18, sparseArray2);
                                SparseArray sparseArray3 = hVar.f3775c;
                                int i22 = dVar3.f3757b;
                                int i23 = fVar3.f3761a;
                                if (i22 == 0 && (fVar2 = (f) sparseArray3.get(i23)) != null) {
                                    fVar3.mergeFrom(fVar2);
                                }
                                sparseArray3.put(i23, fVar3);
                                break;
                            }
                            break;
                        case 18:
                            if (readBits4 != hVar.f3773a) {
                                if (readBits4 == hVar.f3774b) {
                                    a f3 = f(parsableBitArray, readBits5);
                                    hVar.f3778f.put(f3.f3742a, f3);
                                    break;
                                }
                            } else {
                                a f7 = f(parsableBitArray, readBits5);
                                hVar.f3776d.put(f7.f3742a, f7);
                                break;
                            }
                            break;
                        case 19:
                            if (readBits4 != hVar.f3773a) {
                                if (readBits4 == hVar.f3774b) {
                                    c g7 = g(parsableBitArray);
                                    hVar.f3779g.put(g7.f3752a, g7);
                                    break;
                                }
                            } else {
                                c g8 = g(parsableBitArray);
                                hVar.f3777e.put(g8.f3752a, g8);
                                break;
                            }
                            break;
                        case 20:
                            if (readBits4 == hVar.f3773a) {
                                parsableBitArray.skipBits(4);
                                boolean readBit2 = parsableBitArray.readBit();
                                parsableBitArray.skipBits(3);
                                int readBits24 = parsableBitArray.readBits(16);
                                int readBits25 = parsableBitArray.readBits(16);
                                if (readBit2) {
                                    int readBits26 = parsableBitArray.readBits(16);
                                    i15 = parsableBitArray.readBits(16);
                                    i18 = parsableBitArray.readBits(16);
                                    i16 = parsableBitArray.readBits(16);
                                    i17 = readBits26;
                                } else {
                                    i15 = readBits24;
                                    i16 = readBits25;
                                    i17 = 0;
                                    i18 = 0;
                                }
                                hVar.f3780h = new b(readBits24, readBits25, i17, i15, i18, i16);
                                break;
                            }
                            break;
                    }
                    parsableBitArray.skipBytes(bytePosition - parsableBitArray.getBytePosition());
                }
            }
        }
        d dVar4 = hVar.f3781i;
        if (dVar4 == null) {
            cVar = new S0.c(ImmutableList.of(), C.TIME_UNSET, C.TIME_UNSET);
        } else {
            b bVar = hVar.f3780h;
            if (bVar == null) {
                bVar = this.f3788d;
            }
            Bitmap bitmap = this.f3791g;
            Canvas canvas = this.f3787c;
            if (bitmap == null || bVar.f3746a + 1 != bitmap.getWidth() || bVar.f3747b + 1 != this.f3791g.getHeight()) {
                Bitmap createBitmap = Bitmap.createBitmap(bVar.f3746a + 1, bVar.f3747b + 1, Bitmap.Config.ARGB_8888);
                this.f3791g = createBitmap;
                canvas.setBitmap(createBitmap);
            }
            ArrayList arrayList2 = new ArrayList();
            int i24 = 0;
            while (true) {
                SparseArray sparseArray4 = dVar4.f3758c;
                if (i24 < sparseArray4.size()) {
                    canvas.save();
                    e eVar = (e) sparseArray4.valueAt(i24);
                    f fVar4 = (f) hVar.f3775c.get(sparseArray4.keyAt(i24));
                    int i25 = eVar.f3759a + bVar.f3748c;
                    int i26 = eVar.f3760b + bVar.f3750e;
                    int min = Math.min(fVar4.f3763c + i25, bVar.f3749d);
                    int i27 = fVar4.f3764d;
                    boolean z7 = z6;
                    int i28 = i26 + i27;
                    canvas.clipRect(i25, i26, min, Math.min(i28, bVar.f3751f));
                    SparseArray sparseArray5 = hVar.f3776d;
                    int i29 = fVar4.f3766f;
                    a aVar = (a) sparseArray5.get(i29);
                    if (aVar == null && (aVar = (a) hVar.f3778f.get(i29)) == null) {
                        aVar = this.f3789e;
                    }
                    int i30 = 0;
                    while (true) {
                        SparseArray sparseArray6 = fVar4.f3770j;
                        if (i30 < sparseArray6.size()) {
                            int keyAt = sparseArray6.keyAt(i30);
                            g gVar = (g) sparseArray6.valueAt(i30);
                            d dVar5 = dVar4;
                            c cVar2 = (c) hVar.f3777e.get(keyAt);
                            if (cVar2 == null) {
                                cVar2 = (c) hVar.f3779g.get(keyAt);
                            }
                            if (cVar2 != null) {
                                Paint paint = cVar2.f3753b ? null : this.f3785a;
                                int i31 = gVar.f3771a + i25;
                                int i32 = gVar.f3772b + i26;
                                int i33 = i26;
                                int i34 = fVar4.f3765e;
                                i10 = i24;
                                f fVar5 = fVar4;
                                int[] iArr = i34 == 3 ? aVar.f3745d : i34 == 2 ? aVar.f3744c : aVar.f3743b;
                                fVar = fVar5;
                                arrayList = arrayList2;
                                i14 = i27;
                                hVar2 = hVar;
                                i11 = i33;
                                i12 = i25;
                                i13 = i30;
                                e(cVar2.f3754c, iArr, i34, i31, i32, paint, canvas);
                                e(cVar2.f3755d, iArr, i34, i31, i32 + 1, paint, canvas);
                            } else {
                                arrayList = arrayList2;
                                hVar2 = hVar;
                                i10 = i24;
                                fVar = fVar4;
                                i11 = i26;
                                i12 = i25;
                                i13 = i30;
                                i14 = i27;
                            }
                            i30 = i13 + 1;
                            fVar4 = fVar;
                            i27 = i14;
                            i25 = i12;
                            i26 = i11;
                            dVar4 = dVar5;
                            hVar = hVar2;
                            arrayList2 = arrayList;
                            i24 = i10;
                        } else {
                            d dVar6 = dVar4;
                            ArrayList arrayList3 = arrayList2;
                            h hVar3 = hVar;
                            int i35 = i24;
                            f fVar6 = fVar4;
                            int i36 = i26;
                            int i37 = i25;
                            int i38 = i27;
                            boolean z8 = fVar6.f3762b;
                            int i39 = fVar6.f3763c;
                            if (z8) {
                                int i40 = fVar6.f3765e;
                                if (i40 == 3) {
                                    i9 = aVar.f3745d[fVar6.f3767g];
                                    c9 = 2;
                                } else {
                                    c9 = 2;
                                    i9 = i40 == 2 ? aVar.f3744c[fVar6.f3768h] : aVar.f3743b[fVar6.f3769i];
                                }
                                Paint paint2 = this.f3786b;
                                paint2.setColor(i9);
                                c8 = 3;
                                c7 = c9;
                                float f8 = i28;
                                i8 = i39;
                                canvas.drawRect(i37, i36, i37 + i39, f8, paint2);
                            } else {
                                i8 = i39;
                                c7 = 2;
                                c8 = 3;
                            }
                            Cue.Builder bitmap2 = new Cue.Builder().setBitmap(Bitmap.createBitmap(this.f3791g, i37, i36, i8, i38));
                            float f9 = bVar.f3746a;
                            Cue.Builder positionAnchor = bitmap2.setPosition(i37 / f9).setPositionAnchor(0);
                            float f10 = bVar.f3747b;
                            arrayList3.add(positionAnchor.setLine(i36 / f10, 0).setLineAnchor(0).setSize(i8 / f9).setBitmapHeight(i38 / f10).build());
                            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                            canvas.restore();
                            i24 = i35 + 1;
                            z6 = z7;
                            arrayList2 = arrayList3;
                            hVar = hVar3;
                            dVar4 = dVar6;
                        }
                    }
                } else {
                    cVar = new S0.c(arrayList2, C.TIME_UNSET, C.TIME_UNSET);
                }
            }
        }
        consumer.accept(cVar);
    }

    @Override // S0.s
    public final /* synthetic */ S0.i parseToLegacySubtitle(byte[] bArr, int i2, int i7) {
        return o.a(this, bArr, i2, i7);
    }

    @Override // S0.s
    public void reset() {
        this.f3790f.reset();
    }
}
