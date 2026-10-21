package g1;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.PriorityQueue;

/* renamed from: g1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0943c {

    /* renamed from: f, reason: collision with root package name */
    public static final C0941a f16405f = new C0941a();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f16406a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f16407b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f16408c;

    /* renamed from: d, reason: collision with root package name */
    public final C0944d[] f16409d;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f16410e = new float[3];

    public C0943c(int[] iArr, int i2, C0944d[] c0944dArr) {
        C0942b c0942b;
        this.f16409d = c0944dArr;
        int[] iArr2 = new int[32768];
        this.f16407b = iArr2;
        int i7 = 0;
        for (int i8 = 0; i8 < iArr.length; i8++) {
            int i9 = iArr[i8];
            int b7 = b(Color.blue(i9), 8, 5) | (b(Color.red(i9), 8, 5) << 10) | (b(Color.green(i9), 8, 5) << 5);
            iArr[i8] = b7;
            iArr2[b7] = iArr2[b7] + 1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < 32768; i11++) {
            if (iArr2[i11] > 0) {
                int rgb = Color.rgb(b((i11 >> 10) & 31, 5, 8), b((i11 >> 5) & 31, 5, 8), b(i11 & 31, 5, 8));
                float[] fArr = this.f16410e;
                D.a.colorToHSL(rgb, fArr);
                if (c(rgb, fArr)) {
                    iArr2[i11] = 0;
                }
            }
            if (iArr2[i11] > 0) {
                i10++;
            }
        }
        int[] iArr3 = new int[i10];
        this.f16406a = iArr3;
        int i12 = 0;
        for (int i13 = 0; i13 < 32768; i13++) {
            if (iArr2[i13] > 0) {
                iArr3[i12] = i13;
                i12++;
            }
        }
        if (i10 <= i2) {
            this.f16408c = new ArrayList();
            while (i7 < i10) {
                int i14 = iArr3[i7];
                this.f16408c.add(new C0946f(Color.rgb(b((i14 >> 10) & 31, 5, 8), b((i14 >> 5) & 31, 5, 8), b(i14 & 31, 5, 8)), iArr2[i14]));
                i7++;
            }
            return;
        }
        PriorityQueue priorityQueue = new PriorityQueue(i2, f16405f);
        priorityQueue.offer(new C0942b(this, 0, this.f16406a.length - 1));
        while (priorityQueue.size() < i2 && (c0942b = (C0942b) priorityQueue.poll()) != null) {
            int i15 = c0942b.f16396b;
            int i16 = c0942b.f16395a;
            if ((i15 + 1) - i16 <= 1) {
                break;
            }
            if ((i15 + 1) - i16 <= 1) {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int i17 = c0942b.f16399e - c0942b.f16398d;
            int i18 = c0942b.f16401g - c0942b.f16400f;
            int i19 = c0942b.f16403i - c0942b.f16402h;
            int i20 = (i17 < i18 || i17 < i19) ? (i18 < i17 || i18 < i19) ? -1 : -2 : -3;
            C0943c c0943c = c0942b.f16404j;
            int[] iArr4 = c0943c.f16406a;
            a(iArr4, i20, i16, i15);
            Arrays.sort(iArr4, i16, c0942b.f16396b + 1);
            a(iArr4, i20, i16, c0942b.f16396b);
            int i21 = c0942b.f16397c / 2;
            int i22 = i7;
            int i23 = i16;
            while (true) {
                int i24 = c0942b.f16396b;
                if (i23 <= i24) {
                    i22 += c0943c.f16407b[iArr4[i23]];
                    if (i22 >= i21) {
                        i16 = Math.min(i24 - 1, i23);
                        break;
                    }
                    i23++;
                }
            }
            C0942b c0942b2 = new C0942b(c0943c, i16 + 1, c0942b.f16396b);
            c0942b.f16396b = i16;
            c0942b.a();
            priorityQueue.offer(c0942b2);
            priorityQueue.offer(c0942b);
            i7 = 0;
        }
        ArrayList arrayList = new ArrayList(priorityQueue.size());
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            C0942b c0942b3 = (C0942b) it.next();
            C0943c c0943c2 = c0942b3.f16404j;
            int[] iArr5 = c0943c2.f16406a;
            int i25 = 0;
            int i26 = 0;
            int i27 = 0;
            int i28 = 0;
            for (int i29 = c0942b3.f16395a; i29 <= c0942b3.f16396b; i29++) {
                int i30 = iArr5[i29];
                int i31 = c0943c2.f16407b[i30];
                i26 += i31;
                i25 += ((i30 >> 10) & 31) * i31;
                i27 += ((i30 >> 5) & 31) * i31;
                i28 += i31 * (i30 & 31);
            }
            float f3 = i26;
            C0946f c0946f = new C0946f(Color.rgb(b(Math.round(i25 / f3), 5, 8), b(Math.round(i27 / f3), 5, 8), b(Math.round(i28 / f3), 5, 8)), i26);
            if (!c(c0946f.getRgb(), c0946f.getHsl())) {
                arrayList.add(c0946f);
            }
        }
        this.f16408c = arrayList;
    }

    public static void a(int[] iArr, int i2, int i7, int i8) {
        if (i2 == -2) {
            while (i7 <= i8) {
                int i9 = iArr[i7];
                iArr[i7] = (i9 & 31) | (((i9 >> 5) & 31) << 10) | (((i9 >> 10) & 31) << 5);
                i7++;
            }
            return;
        }
        if (i2 != -1) {
            return;
        }
        while (i7 <= i8) {
            int i10 = iArr[i7];
            iArr[i7] = ((i10 >> 10) & 31) | ((i10 & 31) << 10) | (((i10 >> 5) & 31) << 5);
            i7++;
        }
    }

    public static int b(int i2, int i7, int i8) {
        return (i8 > i7 ? i2 << (i8 - i7) : i2 >> (i7 - i8)) & ((1 << i8) - 1);
    }

    public final boolean c(int i2, float[] fArr) {
        C0944d[] c0944dArr = this.f16409d;
        if (c0944dArr != null && c0944dArr.length > 0) {
            for (C0944d c0944d : c0944dArr) {
                if (!c0944d.isAllowed(i2, fArr)) {
                    return true;
                }
            }
        }
        return false;
    }
}
