package G3;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class A {

    /* renamed from: a, reason: collision with root package name */
    public float f1052a;

    /* renamed from: b, reason: collision with root package name */
    public float f1053b;

    /* renamed from: c, reason: collision with root package name */
    public float f1054c;

    /* renamed from: d, reason: collision with root package name */
    public float f1055d;

    /* renamed from: e, reason: collision with root package name */
    public float f1056e;

    /* renamed from: f, reason: collision with root package name */
    public float f1057f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f1058g = new ArrayList();

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f1059h = new ArrayList();

    public A() {
        reset(0.0f, 0.0f);
    }

    public final void a(float f3) {
        float f7 = this.f1056e;
        if (f7 == f3) {
            return;
        }
        float f8 = ((f3 - f7) + 360.0f) % 360.0f;
        if (f8 > 180.0f) {
            return;
        }
        float f9 = this.f1054c;
        float f10 = this.f1055d;
        w wVar = new w(f9, f10, f9, f10);
        wVar.f1165f = this.f1056e;
        wVar.f1166g = f8;
        this.f1059h.add(new u(wVar));
        this.f1056e = f3;
    }

    public void addArc(float f3, float f7, float f8, float f9, float f10, float f11) {
        w wVar = new w(f3, f7, f8, f9);
        wVar.f1165f = f10;
        wVar.f1166g = f11;
        this.f1058g.add(wVar);
        u uVar = new u(wVar);
        float f12 = f10 + f11;
        boolean z6 = f11 < 0.0f;
        if (z6) {
            f10 = (f10 + 180.0f) % 360.0f;
        }
        float f13 = z6 ? (180.0f + f12) % 360.0f : f12;
        a(f10);
        this.f1059h.add(uVar);
        this.f1056e = f13;
        double d7 = f12;
        this.f1054c = (((f8 - f3) / 2.0f) * ((float) Math.cos(Math.toRadians(d7)))) + ((f3 + f8) * 0.5f);
        this.f1055d = (((f9 - f7) / 2.0f) * ((float) Math.sin(Math.toRadians(d7)))) + ((f7 + f9) * 0.5f);
    }

    public void applyToPath(Matrix matrix, Path path) {
        ArrayList arrayList = this.f1058g;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((y) arrayList.get(i2)).applyToPath(matrix, path);
        }
    }

    public void lineTo(float f3, float f7) {
        x xVar = new x();
        xVar.f1167b = f3;
        xVar.f1168c = f7;
        this.f1058g.add(xVar);
        v vVar = new v(xVar, this.f1054c, this.f1055d);
        float a7 = vVar.a() + 270.0f;
        float a8 = vVar.a() + 270.0f;
        a(a7);
        this.f1059h.add(vVar);
        this.f1056e = a8;
        this.f1054c = f3;
        this.f1055d = f7;
    }

    public void reset(float f3, float f7) {
        reset(f3, f7, 270.0f, 0.0f);
    }

    public void reset(float f3, float f7, float f8, float f9) {
        this.f1052a = f3;
        this.f1053b = f7;
        this.f1054c = f3;
        this.f1055d = f7;
        this.f1056e = f8;
        this.f1057f = (f8 + f9) % 360.0f;
        this.f1058g.clear();
        this.f1059h.clear();
    }
}
