package androidx.leanback.widget;

/* loaded from: classes.dex */
public abstract class V {

    /* renamed from: a, reason: collision with root package name */
    public int f6753a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f6754b = 0;

    /* renamed from: c, reason: collision with root package name */
    public float f6755c = 50.0f;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6756d = false;

    public final int getItemAlignmentOffset() {
        return this.f6754b;
    }

    public final float getItemAlignmentOffsetPercent() {
        return this.f6755c;
    }

    public final int getItemAlignmentViewId() {
        return this.f6753a;
    }

    public boolean isAlignedToTextViewBaseLine() {
        return false;
    }

    public final void setItemAlignmentOffset(int i2) {
        this.f6754b = i2;
    }

    public final void setItemAlignmentOffsetPercent(float f3) {
        if ((f3 < 0.0f || f3 > 100.0f) && f3 != -1.0f) {
            throw new IllegalArgumentException();
        }
        this.f6755c = f3;
    }

    public final void setItemAlignmentOffsetWithPadding(boolean z6) {
        this.f6756d = z6;
    }

    public final void setItemAlignmentViewId(int i2) {
        this.f6753a = i2;
    }
}
