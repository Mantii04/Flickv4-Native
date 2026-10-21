package a1;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.Arrays;

/* renamed from: a1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0378a {

    /* renamed from: b, reason: collision with root package name */
    public boolean f4621b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4622c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f4623d;

    /* renamed from: e, reason: collision with root package name */
    public int f4624e;

    /* renamed from: f, reason: collision with root package name */
    public int f4625f;

    /* renamed from: g, reason: collision with root package name */
    public Rect f4626g;

    /* renamed from: a, reason: collision with root package name */
    public final int[] f4620a = new int[4];

    /* renamed from: h, reason: collision with root package name */
    public int f4627h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f4628i = -1;

    public static int a(int[] iArr, int i2) {
        return (i2 < 0 || i2 >= iArr.length) ? iArr[0] : iArr[i2];
    }

    public static int c(int i2, int i7) {
        return (i2 & 16777215) | ((i7 * 17) << 24);
    }

    public final void b(ParsableBitArray parsableBitArray, boolean z6, Rect rect, int[] iArr) {
        int i2;
        int i7;
        int width = rect.width();
        int height = rect.height();
        int i8 = !z6 ? 1 : 0;
        int i9 = i8 * width;
        while (true) {
            int i10 = 0;
            do {
                int i11 = 0;
                for (int i12 = 1; i11 < i12 && i12 <= 64; i12 <<= 2) {
                    if (parsableBitArray.bitsLeft() < 4) {
                        i2 = -1;
                        i7 = 0;
                        break;
                    }
                    i11 = (i11 << 4) | parsableBitArray.readBits(4);
                }
                i2 = i11 & 3;
                i7 = i11 < 4 ? width : i11 >> 2;
                int min = Math.min(i7, width - i10);
                if (min > 0) {
                    int i13 = i9 + min;
                    Arrays.fill(iArr, i9, i13, this.f4620a[i2]);
                    i10 += min;
                    i9 = i13;
                }
            } while (i10 < width);
            i8 += 2;
            if (i8 >= height) {
                return;
            }
            i9 = i8 * width;
            parsableBitArray.byteAlign();
        }
    }

    public Cue build(ParsableByteArray parsableByteArray) {
        Rect rect;
        if (this.f4623d == null || !this.f4621b || !this.f4622c || (rect = this.f4626g) == null || this.f4627h == -1 || this.f4628i == -1 || rect.width() < 2 || this.f4626g.height() < 2) {
            return null;
        }
        Rect rect2 = this.f4626g;
        int[] iArr = new int[rect2.height() * rect2.width()];
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableByteArray.setPosition(this.f4627h);
        parsableBitArray.reset(parsableByteArray);
        b(parsableBitArray, true, rect2, iArr);
        parsableByteArray.setPosition(this.f4628i);
        parsableBitArray.reset(parsableByteArray);
        b(parsableBitArray, false, rect2, iArr);
        return new Cue.Builder().setBitmap(Bitmap.createBitmap(iArr, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888)).setPosition(rect2.left / this.f4624e).setPositionAnchor(0).setLine(rect2.top / this.f4625f, 0).setLineAnchor(0).setSize(rect2.width() / this.f4624e).setBitmapHeight(rect2.height() / this.f4625f).build();
    }

    public void parseIdx(String str) {
        int i2;
        for (String str2 : Util.split(str.trim(), "\\r?\\n")) {
            if (str2.startsWith("palette: ")) {
                String[] split = Util.split(str2.substring(9), ",");
                this.f4623d = new int[split.length];
                for (int i7 = 0; i7 < split.length; i7++) {
                    int[] iArr = this.f4623d;
                    try {
                        i2 = Integer.parseInt(split[i7].trim(), 16);
                    } catch (RuntimeException e3) {
                        Log.w("VobsubParser", "Parsing color failed", e3);
                        i2 = 0;
                    }
                    iArr[i7] = i2;
                }
            } else if (str2.startsWith("size: ")) {
                String[] split2 = Util.split(str2.substring(6).trim(), "x");
                if (split2.length != 2) {
                    Log.w("VobsubParser", "Ignoring malformed IDX size line: '" + str2 + "'");
                } else {
                    try {
                        this.f4624e = Integer.parseInt(split2[0]);
                        this.f4625f = Integer.parseInt(split2[1]);
                        this.f4621b = true;
                    } catch (RuntimeException e7) {
                        Log.w("VobsubParser", "Parsing IDX failed", e7);
                    }
                }
            }
        }
    }

    public void reset() {
        this.f4622c = false;
        this.f4626g = null;
        this.f4627h = -1;
        this.f4628i = -1;
    }
}
