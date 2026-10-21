package androidx.leanback.widget;

import androidx.media3.common.util.Log;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class B1 {

    /* renamed from: c, reason: collision with root package name */
    public int f6463c;

    /* renamed from: d, reason: collision with root package name */
    public int f6464d;

    /* renamed from: i, reason: collision with root package name */
    public int f6469i;

    /* renamed from: j, reason: collision with root package name */
    public int f6470j;

    /* renamed from: k, reason: collision with root package name */
    public int f6471k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f6472l;

    /* renamed from: e, reason: collision with root package name */
    public int f6465e = 2;

    /* renamed from: f, reason: collision with root package name */
    public int f6466f = 3;

    /* renamed from: g, reason: collision with root package name */
    public int f6467g = 0;

    /* renamed from: h, reason: collision with root package name */
    public float f6468h = 50.0f;

    /* renamed from: b, reason: collision with root package name */
    public int f6462b = Integer.MIN_VALUE;

    /* renamed from: a, reason: collision with root package name */
    public int f6461a = Log.LOG_LEVEL_OFF;

    public final int a() {
        if (this.f6472l) {
            int i2 = this.f6467g;
            int i7 = i2 >= 0 ? this.f6469i - i2 : -i2;
            float f3 = this.f6468h;
            return f3 != -1.0f ? i7 - ((int) ((this.f6469i * f3) / 100.0f)) : i7;
        }
        int i8 = this.f6467g;
        if (i8 < 0) {
            i8 += this.f6469i;
        }
        float f7 = this.f6468h;
        return f7 != -1.0f ? i8 + ((int) ((this.f6469i * f7) / 100.0f)) : i8;
    }

    public int getClientSize() {
        return (this.f6469i - this.f6470j) - this.f6471k;
    }

    public int getMaxScroll() {
        return this.f6463c;
    }

    public int getMinScroll() {
        return this.f6464d;
    }

    public int getPaddingMax() {
        return this.f6471k;
    }

    public int getPaddingMin() {
        return this.f6470j;
    }

    public int getScroll(int i2) {
        int i7;
        int i8;
        int size = getSize();
        int a7 = a();
        boolean isMinUnknown = isMinUnknown();
        boolean isMaxUnknown = isMaxUnknown();
        if (!isMinUnknown) {
            int i9 = this.f6470j;
            int i10 = a7 - i9;
            if (this.f6472l ? (this.f6466f & 2) != 0 : (this.f6466f & 1) != 0) {
                int i11 = this.f6462b;
                if (i2 - i11 <= i10) {
                    int i12 = i11 - i9;
                    return (isMaxUnknown || i12 <= (i8 = this.f6463c)) ? i12 : i8;
                }
            }
        }
        if (!isMaxUnknown) {
            int i13 = this.f6471k;
            int i14 = (size - a7) - i13;
            if (this.f6472l ? (this.f6466f & 1) != 0 : (this.f6466f & 2) != 0) {
                int i15 = this.f6461a;
                if (i15 - i2 <= i14) {
                    int i16 = i15 - (size - i13);
                    return (isMinUnknown || i16 >= (i7 = this.f6464d)) ? i16 : i7;
                }
            }
        }
        return i2 - a7;
    }

    public int getSize() {
        return this.f6469i;
    }

    public int getWindowAlignment() {
        return this.f6466f;
    }

    public int getWindowAlignmentOffset() {
        return this.f6467g;
    }

    public float getWindowAlignmentOffsetPercent() {
        return this.f6468h;
    }

    public void invalidateScrollMax() {
        this.f6461a = Log.LOG_LEVEL_OFF;
        this.f6463c = Log.LOG_LEVEL_OFF;
    }

    public void invalidateScrollMin() {
        this.f6462b = Integer.MIN_VALUE;
        this.f6464d = Integer.MIN_VALUE;
    }

    public boolean isMaxUnknown() {
        return this.f6461a == Integer.MAX_VALUE;
    }

    public boolean isMinUnknown() {
        return this.f6462b == Integer.MIN_VALUE;
    }

    public void setPadding(int i2, int i7) {
        this.f6470j = i2;
        this.f6471k = i7;
    }

    public void setReversedFlow(boolean z6) {
        this.f6472l = z6;
    }

    public void setSize(int i2) {
        this.f6469i = i2;
    }

    public void setWindowAlignment(int i2) {
        this.f6466f = i2;
    }

    public void setWindowAlignmentOffset(int i2) {
        this.f6467g = i2;
    }

    public void setWindowAlignmentOffsetPercent(float f3) {
        if ((f3 < 0.0f || f3 > 100.0f) && f3 != -1.0f) {
            throw new IllegalArgumentException();
        }
        this.f6468h = f3;
    }

    public String toString() {
        return " min:" + this.f6462b + StringUtils.SPACE + this.f6464d + " max:" + this.f6461a + StringUtils.SPACE + this.f6463c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0046, code lost:
    
        r4.f6463c = (r4.f6461a - r4.f6470j) - r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
    
        r4.f6464d = r4.f6462b - r4.f6470j;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateMinMax(int r5, int r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.B1.updateMinMax(int, int, int, int):void");
    }
}
