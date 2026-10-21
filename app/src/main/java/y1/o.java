package y1;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public final class o extends r {

    /* renamed from: d, reason: collision with root package name */
    public C.d f20991d;

    /* renamed from: e, reason: collision with root package name */
    public float f20992e;

    /* renamed from: f, reason: collision with root package name */
    public C.d f20993f;

    /* renamed from: g, reason: collision with root package name */
    public float f20994g;

    /* renamed from: h, reason: collision with root package name */
    public float f20995h;

    /* renamed from: i, reason: collision with root package name */
    public float f20996i;

    /* renamed from: j, reason: collision with root package name */
    public float f20997j;

    /* renamed from: k, reason: collision with root package name */
    public float f20998k;

    /* renamed from: l, reason: collision with root package name */
    public Paint.Cap f20999l;

    /* renamed from: m, reason: collision with root package name */
    public Paint.Join f21000m;

    /* renamed from: n, reason: collision with root package name */
    public float f21001n;

    public float getFillAlpha() {
        return this.f20995h;
    }

    public int getFillColor() {
        return this.f20993f.getColor();
    }

    public float getStrokeAlpha() {
        return this.f20994g;
    }

    public int getStrokeColor() {
        return this.f20991d.getColor();
    }

    public float getStrokeWidth() {
        return this.f20992e;
    }

    public float getTrimPathEnd() {
        return this.f20997j;
    }

    public float getTrimPathOffset() {
        return this.f20998k;
    }

    public float getTrimPathStart() {
        return this.f20996i;
    }

    public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
        TypedArray obtainAttributes = C.v.obtainAttributes(resources, theme, attributeSet, AbstractC1870a.f20965c);
        if (C.v.hasAttribute(xmlPullParser, "pathData")) {
            String string = obtainAttributes.getString(0);
            if (string != null) {
                this.f21014b = string;
            }
            String string2 = obtainAttributes.getString(2);
            if (string2 != null) {
                this.f21013a = D.g.createNodesFromPathData(string2);
            }
            this.f20993f = C.v.getNamedComplexColor(obtainAttributes, xmlPullParser, theme, "fillColor", 1, 0);
            this.f20995h = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "fillAlpha", 12, this.f20995h);
            int namedInt = C.v.getNamedInt(obtainAttributes, xmlPullParser, "strokeLineCap", 8, -1);
            Paint.Cap cap = this.f20999l;
            if (namedInt == 0) {
                cap = Paint.Cap.BUTT;
            } else if (namedInt == 1) {
                cap = Paint.Cap.ROUND;
            } else if (namedInt == 2) {
                cap = Paint.Cap.SQUARE;
            }
            this.f20999l = cap;
            int namedInt2 = C.v.getNamedInt(obtainAttributes, xmlPullParser, "strokeLineJoin", 9, -1);
            Paint.Join join = this.f21000m;
            if (namedInt2 == 0) {
                join = Paint.Join.MITER;
            } else if (namedInt2 == 1) {
                join = Paint.Join.ROUND;
            } else if (namedInt2 == 2) {
                join = Paint.Join.BEVEL;
            }
            this.f21000m = join;
            this.f21001n = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "strokeMiterLimit", 10, this.f21001n);
            this.f20991d = C.v.getNamedComplexColor(obtainAttributes, xmlPullParser, theme, "strokeColor", 3, 0);
            this.f20994g = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "strokeAlpha", 11, this.f20994g);
            this.f20992e = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "strokeWidth", 4, this.f20992e);
            this.f20997j = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "trimPathEnd", 6, this.f20997j);
            this.f20998k = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "trimPathOffset", 7, this.f20998k);
            this.f20996i = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "trimPathStart", 5, this.f20996i);
            this.f21015c = C.v.getNamedInt(obtainAttributes, xmlPullParser, "fillType", 13, this.f21015c);
        }
        obtainAttributes.recycle();
    }

    @Override // y1.q
    public boolean isStateful() {
        return this.f20993f.isStateful() || this.f20991d.isStateful();
    }

    @Override // y1.q
    public boolean onStateChanged(int[] iArr) {
        return this.f20991d.onStateChanged(iArr) | this.f20993f.onStateChanged(iArr);
    }

    public void setFillAlpha(float f3) {
        this.f20995h = f3;
    }

    public void setFillColor(int i2) {
        this.f20993f.setColor(i2);
    }

    public void setStrokeAlpha(float f3) {
        this.f20994g = f3;
    }

    public void setStrokeColor(int i2) {
        this.f20991d.setColor(i2);
    }

    public void setStrokeWidth(float f3) {
        this.f20992e = f3;
    }

    public void setTrimPathEnd(float f3) {
        this.f20997j = f3;
    }

    public void setTrimPathOffset(float f3) {
        this.f20998k = f3;
    }

    public void setTrimPathStart(float f3) {
        this.f20996i = f3;
    }
}
