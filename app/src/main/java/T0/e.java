package T0;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: A, reason: collision with root package name */
    public static final int[] f3468A;

    /* renamed from: B, reason: collision with root package name */
    public static final boolean[] f3469B;

    /* renamed from: C, reason: collision with root package name */
    public static final int[] f3470C;

    /* renamed from: D, reason: collision with root package name */
    public static final int[] f3471D;

    /* renamed from: E, reason: collision with root package name */
    public static final int[] f3472E;

    /* renamed from: F, reason: collision with root package name */
    public static final int[] f3473F;

    /* renamed from: v, reason: collision with root package name */
    public static final int f3474v = getArgbColorFromCeaColor(2, 2, 2, 0);

    /* renamed from: w, reason: collision with root package name */
    public static final int f3475w;

    /* renamed from: x, reason: collision with root package name */
    public static final int f3476x;

    /* renamed from: y, reason: collision with root package name */
    public static final int[] f3477y;

    /* renamed from: z, reason: collision with root package name */
    public static final int[] f3478z;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3479a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final SpannableStringBuilder f3480b = new SpannableStringBuilder();

    /* renamed from: c, reason: collision with root package name */
    public boolean f3481c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3482d;

    /* renamed from: e, reason: collision with root package name */
    public int f3483e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f3484f;

    /* renamed from: g, reason: collision with root package name */
    public int f3485g;

    /* renamed from: h, reason: collision with root package name */
    public int f3486h;

    /* renamed from: i, reason: collision with root package name */
    public int f3487i;

    /* renamed from: j, reason: collision with root package name */
    public int f3488j;

    /* renamed from: k, reason: collision with root package name */
    public int f3489k;

    /* renamed from: l, reason: collision with root package name */
    public int f3490l;

    /* renamed from: m, reason: collision with root package name */
    public int f3491m;

    /* renamed from: n, reason: collision with root package name */
    public int f3492n;

    /* renamed from: o, reason: collision with root package name */
    public int f3493o;

    /* renamed from: p, reason: collision with root package name */
    public int f3494p;

    /* renamed from: q, reason: collision with root package name */
    public int f3495q;

    /* renamed from: r, reason: collision with root package name */
    public int f3496r;

    /* renamed from: s, reason: collision with root package name */
    public int f3497s;

    /* renamed from: t, reason: collision with root package name */
    public int f3498t;

    /* renamed from: u, reason: collision with root package name */
    public int f3499u;

    static {
        int argbColorFromCeaColor = getArgbColorFromCeaColor(0, 0, 0, 0);
        f3475w = argbColorFromCeaColor;
        int argbColorFromCeaColor2 = getArgbColorFromCeaColor(0, 0, 0, 3);
        f3476x = argbColorFromCeaColor2;
        f3477y = new int[]{0, 0, 0, 0, 0, 2, 0};
        f3478z = new int[]{0, 0, 0, 0, 0, 0, 2};
        f3468A = new int[]{3, 3, 3, 3, 3, 3, 1};
        f3469B = new boolean[]{false, false, false, true, true, true, false};
        f3470C = new int[]{argbColorFromCeaColor, argbColorFromCeaColor2, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor2, argbColorFromCeaColor, argbColorFromCeaColor};
        f3471D = new int[]{0, 1, 2, 3, 4, 3, 4};
        f3472E = new int[]{0, 0, 0, 0, 0, 3, 3};
        f3473F = new int[]{argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor, argbColorFromCeaColor2, argbColorFromCeaColor2};
    }

    public e() {
        reset();
    }

    public static int getArgbColorFromCeaColor(int i2, int i7, int i8) {
        return getArgbColorFromCeaColor(i2, i7, i8, 0);
    }

    public void append(char c7) {
        SpannableStringBuilder spannableStringBuilder = this.f3480b;
        if (c7 != '\n') {
            spannableStringBuilder.append(c7);
            return;
        }
        ArrayList arrayList = this.f3479a;
        arrayList.add(buildSpannableString());
        spannableStringBuilder.clear();
        if (this.f3493o != -1) {
            this.f3493o = 0;
        }
        if (this.f3494p != -1) {
            this.f3494p = 0;
        }
        if (this.f3495q != -1) {
            this.f3495q = 0;
        }
        if (this.f3497s != -1) {
            this.f3497s = 0;
        }
        while (true) {
            if (arrayList.size() < this.f3488j && arrayList.size() < 15) {
                this.f3499u = arrayList.size();
                return;
            }
            arrayList.remove(0);
        }
    }

    public void backspace() {
        SpannableStringBuilder spannableStringBuilder = this.f3480b;
        int length = spannableStringBuilder.length();
        if (length > 0) {
            spannableStringBuilder.delete(length - 1, length);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T0.d build() {
        /*
            Method dump skipped, instructions count: 182
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: T0.e.build():T0.d");
    }

    public SpannableString buildSpannableString() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f3480b);
        int length = spannableStringBuilder.length();
        if (length > 0) {
            if (this.f3493o != -1) {
                spannableStringBuilder.setSpan(new StyleSpan(2), this.f3493o, length, 33);
            }
            if (this.f3494p != -1) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), this.f3494p, length, 33);
            }
            if (this.f3495q != -1) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f3496r), this.f3495q, length, 33);
            }
            if (this.f3497s != -1) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f3498t), this.f3497s, length, 33);
            }
        }
        return new SpannableString(spannableStringBuilder);
    }

    public void clear() {
        this.f3479a.clear();
        this.f3480b.clear();
        this.f3493o = -1;
        this.f3494p = -1;
        this.f3495q = -1;
        this.f3497s = -1;
        this.f3499u = 0;
    }

    public void defineWindow(boolean z6, int i2, boolean z7, int i7, int i8, int i9, int i10, int i11, int i12) {
        this.f3481c = true;
        this.f3482d = z6;
        this.f3483e = i2;
        this.f3484f = z7;
        this.f3485g = i7;
        this.f3486h = i8;
        this.f3487i = i10;
        int i13 = i9 + 1;
        if (this.f3488j != i13) {
            this.f3488j = i13;
            while (true) {
                ArrayList arrayList = this.f3479a;
                if (arrayList.size() < this.f3488j && arrayList.size() < 15) {
                    break;
                } else {
                    arrayList.remove(0);
                }
            }
        }
        if (i11 != 0 && this.f3490l != i11) {
            this.f3490l = i11;
            int i14 = i11 - 1;
            setWindowAttributes(f3470C[i14], f3476x, f3469B[i14], 0, f3478z[i14], f3468A[i14], f3477y[i14]);
        }
        if (i12 == 0 || this.f3491m == i12) {
            return;
        }
        this.f3491m = i12;
        int i15 = i12 - 1;
        setPenAttributes(0, 1, 1, false, false, f3472E[i15], f3471D[i15]);
        setPenColor(f3474v, f3473F[i15], f3475w);
    }

    public boolean isDefined() {
        return this.f3481c;
    }

    public boolean isEmpty() {
        if (isDefined()) {
            return this.f3479a.isEmpty() && this.f3480b.length() == 0;
        }
        return true;
    }

    public boolean isVisible() {
        return this.f3482d;
    }

    public void reset() {
        clear();
        this.f3481c = false;
        this.f3482d = false;
        this.f3483e = 4;
        this.f3484f = false;
        this.f3485g = 0;
        this.f3486h = 0;
        this.f3487i = 0;
        this.f3488j = 15;
        this.f3489k = 0;
        this.f3490l = 0;
        this.f3491m = 0;
        int i2 = f3475w;
        this.f3492n = i2;
        this.f3496r = f3474v;
        this.f3498t = i2;
    }

    public void setPenAttributes(int i2, int i7, int i8, boolean z6, boolean z7, int i9, int i10) {
        int i11 = this.f3493o;
        SpannableStringBuilder spannableStringBuilder = this.f3480b;
        if (i11 != -1) {
            if (!z6) {
                spannableStringBuilder.setSpan(new StyleSpan(2), this.f3493o, spannableStringBuilder.length(), 33);
                this.f3493o = -1;
            }
        } else if (z6) {
            this.f3493o = spannableStringBuilder.length();
        }
        if (this.f3494p == -1) {
            if (z7) {
                this.f3494p = spannableStringBuilder.length();
            }
        } else {
            if (z7) {
                return;
            }
            spannableStringBuilder.setSpan(new UnderlineSpan(), this.f3494p, spannableStringBuilder.length(), 33);
            this.f3494p = -1;
        }
    }

    public void setPenColor(int i2, int i7, int i8) {
        int i9 = this.f3495q;
        SpannableStringBuilder spannableStringBuilder = this.f3480b;
        if (i9 != -1 && this.f3496r != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f3496r), this.f3495q, spannableStringBuilder.length(), 33);
        }
        if (i2 != f3474v) {
            this.f3495q = spannableStringBuilder.length();
            this.f3496r = i2;
        }
        if (this.f3497s != -1 && this.f3498t != i7) {
            spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f3498t), this.f3497s, spannableStringBuilder.length(), 33);
        }
        if (i7 != f3475w) {
            this.f3497s = spannableStringBuilder.length();
            this.f3498t = i7;
        }
    }

    public void setPenLocation(int i2, int i7) {
        if (this.f3499u != i2) {
            append('\n');
        }
        this.f3499u = i2;
    }

    public void setVisibility(boolean z6) {
        this.f3482d = z6;
    }

    public void setWindowAttributes(int i2, int i7, boolean z6, int i8, int i9, int i10, int i11) {
        this.f3492n = i2;
        this.f3489k = i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getArgbColorFromCeaColor(int r4, int r5, int r6, int r7) {
        /*
            r0 = 4
            P3.v.checkElementIndex(r4, r0)
            P3.v.checkElementIndex(r5, r0)
            P3.v.checkElementIndex(r6, r0)
            P3.v.checkElementIndex(r7, r0)
            r0 = 0
            r1 = 1
            r2 = 255(0xff, float:3.57E-43)
            if (r7 == 0) goto L1b
            if (r7 == r1) goto L1b
            r3 = 2
            if (r7 == r3) goto L1f
            r3 = 3
            if (r7 == r3) goto L1d
        L1b:
            r7 = r2
            goto L21
        L1d:
            r7 = r0
            goto L21
        L1f:
            r7 = 127(0x7f, float:1.78E-43)
        L21:
            if (r4 <= r1) goto L25
            r4 = r2
            goto L26
        L25:
            r4 = r0
        L26:
            if (r5 <= r1) goto L2a
            r5 = r2
            goto L2b
        L2a:
            r5 = r0
        L2b:
            if (r6 <= r1) goto L2e
            r0 = r2
        L2e:
            int r4 = android.graphics.Color.argb(r7, r4, r5, r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: T0.e.getArgbColorFromCeaColor(int, int, int, int):int");
    }
}
