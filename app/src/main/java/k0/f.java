package k0;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public int f17241a;

    /* renamed from: b, reason: collision with root package name */
    public int f17242b;

    /* renamed from: c, reason: collision with root package name */
    public int f17243c;

    /* renamed from: d, reason: collision with root package name */
    public CharSequence[] f17244d;

    /* renamed from: e, reason: collision with root package name */
    public String f17245e;

    public int getCount() {
        return (this.f17243c - this.f17242b) + 1;
    }

    public int getCurrentValue() {
        return this.f17241a;
    }

    public CharSequence getLabelFor(int i2) {
        CharSequence[] charSequenceArr = this.f17244d;
        return charSequenceArr == null ? String.format(this.f17245e, Integer.valueOf(i2)) : charSequenceArr[i2];
    }

    public int getMaxValue() {
        return this.f17243c;
    }

    public int getMinValue() {
        return this.f17242b;
    }

    public void setCurrentValue(int i2) {
        this.f17241a = i2;
    }

    public void setLabelFormat(String str) {
        this.f17245e = str;
    }

    public void setMaxValue(int i2) {
        this.f17243c = i2;
    }

    public void setMinValue(int i2) {
        this.f17242b = i2;
    }

    public void setStaticLabels(CharSequence[] charSequenceArr) {
        this.f17244d = charSequenceArr;
    }
}
