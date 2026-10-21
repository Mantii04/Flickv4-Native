package V1;

import T1.AbstractC0324c;
import T1.G;
import T1.K;
import W1.u;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import g2.C0949c;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class b implements W1.a, l, f {

    /* renamed from: e, reason: collision with root package name */
    public final G f3826e;

    /* renamed from: f, reason: collision with root package name */
    public final AbstractC0642b f3827f;

    /* renamed from: h, reason: collision with root package name */
    public final float[] f3829h;

    /* renamed from: i, reason: collision with root package name */
    public final U1.a f3830i;

    /* renamed from: j, reason: collision with root package name */
    public final W1.f f3831j;

    /* renamed from: k, reason: collision with root package name */
    public final W1.f f3832k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f3833l;

    /* renamed from: m, reason: collision with root package name */
    public final W1.f f3834m;

    /* renamed from: n, reason: collision with root package name */
    public u f3835n;

    /* renamed from: a, reason: collision with root package name */
    public final PathMeasure f3822a = new PathMeasure();

    /* renamed from: b, reason: collision with root package name */
    public final Path f3823b = new Path();

    /* renamed from: c, reason: collision with root package name */
    public final Path f3824c = new Path();

    /* renamed from: d, reason: collision with root package name */
    public final RectF f3825d = new RectF();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f3828g = new ArrayList();

    public b(G g7, AbstractC0642b abstractC0642b, Paint.Cap cap, Paint.Join join, float f3, Z1.d dVar, Z1.b bVar, List list, Z1.b bVar2) {
        U1.a aVar = new U1.a(1);
        this.f3830i = aVar;
        this.f3826e = g7;
        this.f3827f = abstractC0642b;
        aVar.setStyle(Paint.Style.STROKE);
        aVar.setStrokeCap(cap);
        aVar.setStrokeJoin(join);
        aVar.setStrokeMiter(f3);
        this.f3832k = dVar.createAnimation();
        this.f3831j = bVar.createAnimation();
        if (bVar2 == null) {
            this.f3834m = null;
        } else {
            this.f3834m = bVar2.createAnimation();
        }
        this.f3833l = new ArrayList(list.size());
        this.f3829h = new float[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f3833l.add(((Z1.b) list.get(i2)).createAnimation());
        }
        abstractC0642b.addAnimation(this.f3832k);
        abstractC0642b.addAnimation(this.f3831j);
        for (int i7 = 0; i7 < this.f3833l.size(); i7++) {
            abstractC0642b.addAnimation((W1.f) this.f3833l.get(i7));
        }
        W1.f fVar = this.f3834m;
        if (fVar != null) {
            abstractC0642b.addAnimation(fVar);
        }
        this.f3832k.addUpdateListener(this);
        this.f3831j.addUpdateListener(this);
        for (int i8 = 0; i8 < list.size(); i8++) {
            ((W1.f) this.f3833l.get(i8)).addUpdateListener(this);
        }
        W1.f fVar2 = this.f3834m;
        if (fVar2 != null) {
            fVar2.addUpdateListener(this);
        }
    }

    @Override // Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        PointF pointF = K.f3557a;
        if (t6 == 4) {
            this.f3832k.setValueCallback(c0949c);
            return;
        }
        if (t6 == K.f3567k) {
            this.f3831j.setValueCallback(c0949c);
            return;
        }
        if (t6 == K.f3581y) {
            u uVar = this.f3835n;
            AbstractC0642b abstractC0642b = this.f3827f;
            if (uVar != null) {
                abstractC0642b.removeAnimation(uVar);
            }
            if (c0949c == null) {
                this.f3835n = null;
                return;
            }
            u uVar2 = new u(c0949c);
            this.f3835n = uVar2;
            uVar2.addUpdateListener(this);
            abstractC0642b.addAnimation(this.f3835n);
        }
    }

    @Override // V1.f
    public void draw(Canvas canvas, Matrix matrix, int i2) {
        float[] fArr;
        float f3;
        float f7;
        b bVar = this;
        AbstractC0324c.beginSection("StrokeContent#draw");
        if (f2.h.hasZeroScaleAxis(matrix)) {
            AbstractC0324c.endSection("StrokeContent#draw");
            return;
        }
        float f8 = 100.0f;
        boolean z6 = false;
        int clamp = f2.g.clamp((int) ((((i2 / 255.0f) * ((W1.j) bVar.f3832k).getIntValue()) / 100.0f) * 255.0f), 0, 255);
        U1.a aVar = bVar.f3830i;
        aVar.setAlpha(clamp);
        aVar.setStrokeWidth(f2.h.getScale(matrix) * ((W1.h) bVar.f3831j).getFloatValue());
        float f9 = 0.0f;
        if (aVar.getStrokeWidth() <= 0.0f) {
            AbstractC0324c.endSection("StrokeContent#draw");
            return;
        }
        AbstractC0324c.beginSection("StrokeContent#applyDashPattern");
        ArrayList arrayList = bVar.f3833l;
        float f10 = 1.0f;
        if (arrayList.isEmpty()) {
            AbstractC0324c.endSection("StrokeContent#applyDashPattern");
        } else {
            float scale = f2.h.getScale(matrix);
            int i7 = 0;
            while (true) {
                int size = arrayList.size();
                fArr = bVar.f3829h;
                if (i7 >= size) {
                    break;
                }
                float floatValue = ((Float) ((W1.f) arrayList.get(i7)).getValue()).floatValue();
                fArr[i7] = floatValue;
                if (i7 % 2 == 0) {
                    if (floatValue < 1.0f) {
                        fArr[i7] = 1.0f;
                    }
                } else if (floatValue < 0.1f) {
                    fArr[i7] = 0.1f;
                }
                fArr[i7] = fArr[i7] * scale;
                i7++;
            }
            W1.f fVar = bVar.f3834m;
            aVar.setPathEffect(new DashPathEffect(fArr, fVar == null ? 0.0f : ((Float) fVar.getValue()).floatValue() * scale));
            AbstractC0324c.endSection("StrokeContent#applyDashPattern");
        }
        u uVar = bVar.f3835n;
        if (uVar != null) {
            aVar.setColorFilter((ColorFilter) uVar.getValue());
        }
        int i8 = 0;
        while (true) {
            ArrayList arrayList2 = bVar.f3828g;
            if (i8 >= arrayList2.size()) {
                AbstractC0324c.endSection("StrokeContent#draw");
                return;
            }
            a aVar2 = (a) arrayList2.get(i8);
            t tVar = aVar2.f3821b;
            Path path = bVar.f3823b;
            ArrayList arrayList3 = aVar2.f3820a;
            if (tVar != null) {
                AbstractC0324c.beginSection("StrokeContent#applyTrimPath");
                t tVar2 = aVar2.f3821b;
                if (tVar2 == null) {
                    AbstractC0324c.endSection("StrokeContent#applyTrimPath");
                    f3 = f9;
                } else {
                    path.reset();
                    for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
                        path.addPath(((n) arrayList3.get(size2)).getPath(), matrix);
                    }
                    PathMeasure pathMeasure = bVar.f3822a;
                    pathMeasure.setPath(path, z6);
                    float length = pathMeasure.getLength();
                    while (pathMeasure.nextContour()) {
                        length += pathMeasure.getLength();
                    }
                    float floatValue2 = (((Float) tVar2.getOffset().getValue()).floatValue() * length) / 360.0f;
                    float floatValue3 = ((((Float) tVar2.getStart().getValue()).floatValue() * length) / f8) + floatValue2;
                    float floatValue4 = ((((Float) tVar2.getEnd().getValue()).floatValue() * length) / f8) + floatValue2;
                    int size3 = arrayList3.size() - 1;
                    float f11 = f9;
                    while (size3 >= 0) {
                        Path path2 = bVar.f3824c;
                        path2.set(((n) arrayList3.get(size3)).getPath());
                        path2.transform(matrix);
                        pathMeasure.setPath(path2, z6);
                        float length2 = pathMeasure.getLength();
                        if (floatValue4 > length) {
                            float f12 = floatValue4 - length;
                            if (f12 < f11 + length2 && f11 < f12) {
                                f2.h.applyTrimPathIfNeeded(path2, floatValue3 > length ? (floatValue3 - length) / length2 : 0.0f, Math.min(f12 / length2, f10), 0.0f);
                                canvas.drawPath(path2, aVar);
                                f7 = 0.0f;
                                f11 += length2;
                                size3--;
                                bVar = this;
                                f9 = f7;
                                z6 = false;
                                f10 = 1.0f;
                            }
                        }
                        float f13 = f11 + length2;
                        if (f13 >= floatValue3 && f11 <= floatValue4) {
                            if (f13 > floatValue4 || floatValue3 >= f11) {
                                f7 = 0.0f;
                                f2.h.applyTrimPathIfNeeded(path2, floatValue3 < f11 ? 0.0f : (floatValue3 - f11) / length2, floatValue4 > f13 ? 1.0f : (floatValue4 - f11) / length2, 0.0f);
                                canvas.drawPath(path2, aVar);
                                f11 += length2;
                                size3--;
                                bVar = this;
                                f9 = f7;
                                z6 = false;
                                f10 = 1.0f;
                            } else {
                                canvas.drawPath(path2, aVar);
                            }
                        }
                        f7 = 0.0f;
                        f11 += length2;
                        size3--;
                        bVar = this;
                        f9 = f7;
                        z6 = false;
                        f10 = 1.0f;
                    }
                    f3 = f9;
                    AbstractC0324c.endSection("StrokeContent#applyTrimPath");
                }
            } else {
                f3 = f9;
                AbstractC0324c.beginSection("StrokeContent#buildPath");
                path.reset();
                for (int size4 = arrayList3.size() - 1; size4 >= 0; size4--) {
                    path.addPath(((n) arrayList3.get(size4)).getPath(), matrix);
                }
                AbstractC0324c.endSection("StrokeContent#buildPath");
                AbstractC0324c.beginSection("StrokeContent#drawPath");
                canvas.drawPath(path, aVar);
                AbstractC0324c.endSection("StrokeContent#drawPath");
            }
            i8++;
            bVar = this;
            f9 = f3;
            z6 = false;
            f8 = 100.0f;
            f10 = 1.0f;
        }
    }

    @Override // V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        AbstractC0324c.beginSection("StrokeContent#getBounds");
        Path path = this.f3823b;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f3828g;
            if (i2 >= arrayList.size()) {
                RectF rectF2 = this.f3825d;
                path.computeBounds(rectF2, false);
                float floatValue = ((W1.h) this.f3831j).getFloatValue() / 2.0f;
                rectF2.set(rectF2.left - floatValue, rectF2.top - floatValue, rectF2.right + floatValue, rectF2.bottom + floatValue);
                rectF.set(rectF2);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                AbstractC0324c.endSection("StrokeContent#getBounds");
                return;
            }
            a aVar = (a) arrayList.get(i2);
            for (int i7 = 0; i7 < aVar.f3820a.size(); i7++) {
                path.addPath(((n) aVar.f3820a.get(i7)).getPath(), matrix);
            }
            i2++;
        }
    }

    @Override // W1.a
    public void onValueChanged() {
        this.f3826e.invalidateSelf();
    }

    @Override // Y1.f
    public void resolveKeyPath(Y1.e eVar, int i2, List<Y1.e> list, Y1.e eVar2) {
        f2.g.resolveKeyPath(eVar, i2, list, eVar2, this);
    }

    @Override // V1.d
    public void setContents(List<d> list, List<d> list2) {
        ShapeTrimPath$Type shapeTrimPath$Type;
        ArrayList arrayList;
        int size = list.size() - 1;
        a aVar = null;
        t tVar = null;
        while (true) {
            shapeTrimPath$Type = ShapeTrimPath$Type.f9049e;
            if (size < 0) {
                break;
            }
            d dVar = list.get(size);
            if (dVar instanceof t) {
                t tVar2 = (t) dVar;
                if (tVar2.f3947c == shapeTrimPath$Type) {
                    tVar = tVar2;
                }
            }
            size--;
        }
        if (tVar != null) {
            tVar.a(this);
        }
        int size2 = list2.size();
        while (true) {
            size2--;
            arrayList = this.f3828g;
            if (size2 < 0) {
                break;
            }
            d dVar2 = list2.get(size2);
            if (dVar2 instanceof t) {
                t tVar3 = (t) dVar2;
                if (tVar3.f3947c == shapeTrimPath$Type) {
                    if (aVar != null) {
                        arrayList.add(aVar);
                    }
                    a aVar2 = new a(tVar3);
                    tVar3.a(this);
                    aVar = aVar2;
                }
            }
            if (dVar2 instanceof n) {
                if (aVar == null) {
                    aVar = new a(tVar);
                }
                aVar.f3820a.add((n) dVar2);
            }
        }
        if (aVar != null) {
            arrayList.add(aVar);
        }
    }
}
