package Y0;

import android.text.Layout;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public String f4310a;

    /* renamed from: b, reason: collision with root package name */
    public int f4311b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4312c;

    /* renamed from: d, reason: collision with root package name */
    public int f4313d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4314e;

    /* renamed from: k, reason: collision with root package name */
    public float f4320k;

    /* renamed from: l, reason: collision with root package name */
    public String f4321l;

    /* renamed from: o, reason: collision with root package name */
    public Layout.Alignment f4324o;

    /* renamed from: p, reason: collision with root package name */
    public Layout.Alignment f4325p;

    /* renamed from: r, reason: collision with root package name */
    public b f4327r;

    /* renamed from: t, reason: collision with root package name */
    public String f4329t;

    /* renamed from: u, reason: collision with root package name */
    public String f4330u;

    /* renamed from: f, reason: collision with root package name */
    public int f4315f = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f4316g = -1;

    /* renamed from: h, reason: collision with root package name */
    public int f4317h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f4318i = -1;

    /* renamed from: j, reason: collision with root package name */
    public int f4319j = -1;

    /* renamed from: m, reason: collision with root package name */
    public int f4322m = -1;

    /* renamed from: n, reason: collision with root package name */
    public int f4323n = -1;

    /* renamed from: q, reason: collision with root package name */
    public int f4326q = -1;

    /* renamed from: s, reason: collision with root package name */
    public float f4328s = Float.MAX_VALUE;

    public i chain(i iVar) {
        int i2;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (iVar != null) {
            if (!this.f4312c && iVar.f4312c) {
                setFontColor(iVar.f4311b);
            }
            if (this.f4317h == -1) {
                this.f4317h = iVar.f4317h;
            }
            if (this.f4318i == -1) {
                this.f4318i = iVar.f4318i;
            }
            if (this.f4310a == null && (str = iVar.f4310a) != null) {
                this.f4310a = str;
            }
            if (this.f4315f == -1) {
                this.f4315f = iVar.f4315f;
            }
            if (this.f4316g == -1) {
                this.f4316g = iVar.f4316g;
            }
            if (this.f4323n == -1) {
                this.f4323n = iVar.f4323n;
            }
            if (this.f4324o == null && (alignment2 = iVar.f4324o) != null) {
                this.f4324o = alignment2;
            }
            if (this.f4325p == null && (alignment = iVar.f4325p) != null) {
                this.f4325p = alignment;
            }
            if (this.f4326q == -1) {
                this.f4326q = iVar.f4326q;
            }
            if (this.f4319j == -1) {
                this.f4319j = iVar.f4319j;
                this.f4320k = iVar.f4320k;
            }
            if (this.f4327r == null) {
                this.f4327r = iVar.f4327r;
            }
            if (this.f4328s == Float.MAX_VALUE) {
                this.f4328s = iVar.f4328s;
            }
            if (this.f4329t == null) {
                this.f4329t = iVar.f4329t;
            }
            if (this.f4330u == null) {
                this.f4330u = iVar.f4330u;
            }
            if (!this.f4314e && iVar.f4314e) {
                setBackgroundColor(iVar.f4313d);
            }
            if (this.f4322m == -1 && (i2 = iVar.f4322m) != -1) {
                this.f4322m = i2;
            }
        }
        return this;
    }

    public int getBackgroundColor() {
        if (this.f4314e) {
            return this.f4313d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public String getExtent() {
        return this.f4330u;
    }

    public int getFontColor() {
        if (this.f4312c) {
            return this.f4311b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public String getFontFamily() {
        return this.f4310a;
    }

    public float getFontSize() {
        return this.f4320k;
    }

    public int getFontSizeUnit() {
        return this.f4319j;
    }

    public String getId() {
        return this.f4321l;
    }

    public Layout.Alignment getMultiRowAlign() {
        return this.f4325p;
    }

    public String getOrigin() {
        return this.f4329t;
    }

    public int getRubyPosition() {
        return this.f4323n;
    }

    public int getRubyType() {
        return this.f4322m;
    }

    public float getShearPercentage() {
        return this.f4328s;
    }

    public int getStyle() {
        int i2 = this.f4317h;
        if (i2 == -1 && this.f4318i == -1) {
            return -1;
        }
        return (i2 == 1 ? 1 : 0) | (this.f4318i == 1 ? 2 : 0);
    }

    public Layout.Alignment getTextAlign() {
        return this.f4324o;
    }

    public boolean getTextCombine() {
        return this.f4326q == 1;
    }

    public b getTextEmphasis() {
        return this.f4327r;
    }

    public boolean hasBackgroundColor() {
        return this.f4314e;
    }

    public boolean hasFontColor() {
        return this.f4312c;
    }

    public boolean isLinethrough() {
        return this.f4315f == 1;
    }

    public boolean isUnderline() {
        return this.f4316g == 1;
    }

    public i setBackgroundColor(int i2) {
        this.f4313d = i2;
        this.f4314e = true;
        return this;
    }

    public i setBold(boolean z6) {
        this.f4317h = z6 ? 1 : 0;
        return this;
    }

    public i setExtent(String str) {
        this.f4330u = str;
        return this;
    }

    public i setFontColor(int i2) {
        this.f4311b = i2;
        this.f4312c = true;
        return this;
    }

    public i setFontFamily(String str) {
        this.f4310a = str;
        return this;
    }

    public i setFontSize(float f3) {
        this.f4320k = f3;
        return this;
    }

    public i setFontSizeUnit(int i2) {
        this.f4319j = i2;
        return this;
    }

    public i setId(String str) {
        this.f4321l = str;
        return this;
    }

    public i setItalic(boolean z6) {
        this.f4318i = z6 ? 1 : 0;
        return this;
    }

    public i setLinethrough(boolean z6) {
        this.f4315f = z6 ? 1 : 0;
        return this;
    }

    public i setMultiRowAlign(Layout.Alignment alignment) {
        this.f4325p = alignment;
        return this;
    }

    public i setOrigin(String str) {
        this.f4329t = str;
        return this;
    }

    public i setRubyPosition(int i2) {
        this.f4323n = i2;
        return this;
    }

    public i setRubyType(int i2) {
        this.f4322m = i2;
        return this;
    }

    public i setShearPercentage(float f3) {
        this.f4328s = f3;
        return this;
    }

    public i setTextAlign(Layout.Alignment alignment) {
        this.f4324o = alignment;
        return this;
    }

    public i setTextCombine(boolean z6) {
        this.f4326q = z6 ? 1 : 0;
        return this;
    }

    public i setTextEmphasis(b bVar) {
        this.f4327r = bVar;
        return this;
    }

    public i setUnderline(boolean z6) {
        this.f4316g = z6 ? 1 : 0;
        return this;
    }
}
