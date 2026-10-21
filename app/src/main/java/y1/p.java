package y1;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public final class p extends q {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f21002a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f21003b;

    /* renamed from: c, reason: collision with root package name */
    public float f21004c;

    /* renamed from: d, reason: collision with root package name */
    public float f21005d;

    /* renamed from: e, reason: collision with root package name */
    public float f21006e;

    /* renamed from: f, reason: collision with root package name */
    public float f21007f;

    /* renamed from: g, reason: collision with root package name */
    public float f21008g;

    /* renamed from: h, reason: collision with root package name */
    public float f21009h;

    /* renamed from: i, reason: collision with root package name */
    public float f21010i;

    /* renamed from: j, reason: collision with root package name */
    public final Matrix f21011j;

    /* renamed from: k, reason: collision with root package name */
    public String f21012k;

    public p() {
        this.f21002a = new Matrix();
        this.f21003b = new ArrayList();
        this.f21004c = 0.0f;
        this.f21005d = 0.0f;
        this.f21006e = 0.0f;
        this.f21007f = 1.0f;
        this.f21008g = 1.0f;
        this.f21009h = 0.0f;
        this.f21010i = 0.0f;
        this.f21011j = new Matrix();
        this.f21012k = null;
    }

    public final void a() {
        Matrix matrix = this.f21011j;
        matrix.reset();
        matrix.postTranslate(-this.f21005d, -this.f21006e);
        matrix.postScale(this.f21007f, this.f21008g);
        matrix.postRotate(this.f21004c, 0.0f, 0.0f);
        matrix.postTranslate(this.f21009h + this.f21005d, this.f21010i + this.f21006e);
    }

    public String getGroupName() {
        return this.f21012k;
    }

    public Matrix getLocalMatrix() {
        return this.f21011j;
    }

    public float getPivotX() {
        return this.f21005d;
    }

    public float getPivotY() {
        return this.f21006e;
    }

    public float getRotation() {
        return this.f21004c;
    }

    public float getScaleX() {
        return this.f21007f;
    }

    public float getScaleY() {
        return this.f21008g;
    }

    public float getTranslateX() {
        return this.f21009h;
    }

    public float getTranslateY() {
        return this.f21010i;
    }

    public void inflate(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
        TypedArray obtainAttributes = C.v.obtainAttributes(resources, theme, attributeSet, AbstractC1870a.f20964b);
        this.f21004c = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "rotation", 5, this.f21004c);
        this.f21005d = obtainAttributes.getFloat(1, this.f21005d);
        this.f21006e = obtainAttributes.getFloat(2, this.f21006e);
        this.f21007f = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "scaleX", 3, this.f21007f);
        this.f21008g = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "scaleY", 4, this.f21008g);
        this.f21009h = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "translateX", 6, this.f21009h);
        this.f21010i = C.v.getNamedFloat(obtainAttributes, xmlPullParser, "translateY", 7, this.f21010i);
        String string = obtainAttributes.getString(0);
        if (string != null) {
            this.f21012k = string;
        }
        a();
        obtainAttributes.recycle();
    }

    @Override // y1.q
    public boolean isStateful() {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f21003b;
            if (i2 >= arrayList.size()) {
                return false;
            }
            if (((q) arrayList.get(i2)).isStateful()) {
                return true;
            }
            i2++;
        }
    }

    @Override // y1.q
    public boolean onStateChanged(int[] iArr) {
        int i2 = 0;
        boolean z6 = false;
        while (true) {
            ArrayList arrayList = this.f21003b;
            if (i2 >= arrayList.size()) {
                return z6;
            }
            z6 |= ((q) arrayList.get(i2)).onStateChanged(iArr);
            i2++;
        }
    }

    public void setPivotX(float f3) {
        if (f3 != this.f21005d) {
            this.f21005d = f3;
            a();
        }
    }

    public void setPivotY(float f3) {
        if (f3 != this.f21006e) {
            this.f21006e = f3;
            a();
        }
    }

    public void setRotation(float f3) {
        if (f3 != this.f21004c) {
            this.f21004c = f3;
            a();
        }
    }

    public void setScaleX(float f3) {
        if (f3 != this.f21007f) {
            this.f21007f = f3;
            a();
        }
    }

    public void setScaleY(float f3) {
        if (f3 != this.f21008g) {
            this.f21008g = f3;
            a();
        }
    }

    public void setTranslateX(float f3) {
        if (f3 != this.f21009h) {
            this.f21009h = f3;
            a();
        }
    }

    public void setTranslateY(float f3) {
        if (f3 != this.f21010i) {
            this.f21010i = f3;
            a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(p pVar, p.g gVar) {
        n nVar;
        this.f21002a = new Matrix();
        this.f21003b = new ArrayList();
        this.f21004c = 0.0f;
        this.f21005d = 0.0f;
        this.f21006e = 0.0f;
        this.f21007f = 1.0f;
        this.f21008g = 1.0f;
        this.f21009h = 0.0f;
        this.f21010i = 0.0f;
        Matrix matrix = new Matrix();
        this.f21011j = matrix;
        this.f21012k = null;
        this.f21004c = pVar.f21004c;
        this.f21005d = pVar.f21005d;
        this.f21006e = pVar.f21006e;
        this.f21007f = pVar.f21007f;
        this.f21008g = pVar.f21008g;
        this.f21009h = pVar.f21009h;
        this.f21010i = pVar.f21010i;
        String str = pVar.f21012k;
        this.f21012k = str;
        if (str != null) {
            gVar.put(str, this);
        }
        matrix.set(pVar.f21011j);
        ArrayList arrayList = pVar.f21003b;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Object obj = arrayList.get(i2);
            if (obj instanceof p) {
                this.f21003b.add(new p((p) obj, gVar));
            } else {
                if (obj instanceof o) {
                    o oVar = (o) obj;
                    o oVar2 = new o(oVar);
                    oVar2.f20992e = 0.0f;
                    oVar2.f20994g = 1.0f;
                    oVar2.f20995h = 1.0f;
                    oVar2.f20996i = 0.0f;
                    oVar2.f20997j = 1.0f;
                    oVar2.f20998k = 0.0f;
                    oVar2.f20999l = Paint.Cap.BUTT;
                    oVar2.f21000m = Paint.Join.MITER;
                    oVar2.f21001n = 4.0f;
                    oVar.getClass();
                    oVar2.f20991d = oVar.f20991d;
                    oVar2.f20992e = oVar.f20992e;
                    oVar2.f20994g = oVar.f20994g;
                    oVar2.f20993f = oVar.f20993f;
                    oVar2.f21015c = oVar.f21015c;
                    oVar2.f20995h = oVar.f20995h;
                    oVar2.f20996i = oVar.f20996i;
                    oVar2.f20997j = oVar.f20997j;
                    oVar2.f20998k = oVar.f20998k;
                    oVar2.f20999l = oVar.f20999l;
                    oVar2.f21000m = oVar.f21000m;
                    oVar2.f21001n = oVar.f21001n;
                    nVar = oVar2;
                } else if (obj instanceof n) {
                    nVar = new n((n) obj);
                } else {
                    throw new IllegalStateException("Unknown object in the tree!");
                }
                this.f21003b.add(nVar);
                Object obj2 = nVar.f21014b;
                if (obj2 != null) {
                    gVar.put(obj2, nVar);
                }
            }
        }
    }
}
