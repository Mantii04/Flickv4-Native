package V1;

import T1.G;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import b2.AbstractC0642b;
import g2.C0949c;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class e implements f, n, W1.a, Y1.f {

    /* renamed from: a, reason: collision with root package name */
    public final U1.a f3837a;

    /* renamed from: b, reason: collision with root package name */
    public final RectF f3838b;

    /* renamed from: c, reason: collision with root package name */
    public final Matrix f3839c;

    /* renamed from: d, reason: collision with root package name */
    public final Path f3840d;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f3841e;

    /* renamed from: f, reason: collision with root package name */
    public final String f3842f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f3843g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f3844h;

    /* renamed from: i, reason: collision with root package name */
    public final G f3845i;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f3846j;

    /* renamed from: k, reason: collision with root package name */
    public final W1.t f3847k;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e(T1.G r8, b2.AbstractC0642b r9, a2.m r10) {
        /*
            r7 = this;
            java.lang.String r3 = r10.getName()
            boolean r4 = r10.isHidden()
            java.util.List r0 = r10.getItems()
            java.util.ArrayList r5 = new java.util.ArrayList
            int r1 = r0.size()
            r5.<init>(r1)
            r1 = 0
            r2 = r1
        L17:
            int r6 = r0.size()
            if (r2 >= r6) goto L2f
            java.lang.Object r6 = r0.get(r2)
            a2.b r6 = (a2.InterfaceC0381b) r6
            V1.d r6 = r6.toContent(r8, r9)
            if (r6 == 0) goto L2c
            r5.add(r6)
        L2c:
            int r2 = r2 + 1
            goto L17
        L2f:
            java.util.List r10 = r10.getItems()
        L33:
            int r0 = r10.size()
            if (r1 >= r0) goto L4d
            java.lang.Object r0 = r10.get(r1)
            a2.b r0 = (a2.InterfaceC0381b) r0
            boolean r2 = r0 instanceof Z1.l
            if (r2 == 0) goto L4a
            Z1.l r0 = (Z1.l) r0
        L45:
            r1 = r8
            r2 = r9
            r6 = r0
            r0 = r7
            goto L4f
        L4a:
            int r1 = r1 + 1
            goto L33
        L4d:
            r0 = 0
            goto L45
        L4f:
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: V1.e.<init>(T1.G, b2.b, a2.m):void");
    }

    public final List a() {
        if (this.f3846j == null) {
            this.f3846j = new ArrayList();
            int i2 = 0;
            while (true) {
                ArrayList arrayList = this.f3844h;
                if (i2 >= arrayList.size()) {
                    break;
                }
                d dVar = (d) arrayList.get(i2);
                if (dVar instanceof n) {
                    this.f3846j.add((n) dVar);
                }
                i2++;
            }
        }
        return this.f3846j;
    }

    @Override // Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        W1.t tVar = this.f3847k;
        if (tVar != null) {
            tVar.applyValueCallback(t6, c0949c);
        }
    }

    @Override // V1.f
    public void draw(Canvas canvas, Matrix matrix, int i2) {
        if (this.f3843g) {
            return;
        }
        Matrix matrix2 = this.f3839c;
        matrix2.set(matrix);
        W1.t tVar = this.f3847k;
        if (tVar != null) {
            matrix2.preConcat(tVar.getMatrix());
            i2 = (int) (((((tVar.getOpacity() == null ? 100 : ((Integer) tVar.getOpacity().getValue()).intValue()) / 100.0f) * i2) / 255.0f) * 255.0f);
        }
        boolean isApplyingOpacityToLayersEnabled = this.f3845i.isApplyingOpacityToLayersEnabled();
        ArrayList arrayList = this.f3844h;
        boolean z6 = false;
        if (isApplyingOpacityToLayersEnabled) {
            int i7 = 0;
            int i8 = 0;
            while (true) {
                if (i7 >= arrayList.size()) {
                    break;
                }
                if (!(arrayList.get(i7) instanceof f) || (i8 = i8 + 1) < 2) {
                    i7++;
                } else if (i2 != 255) {
                    z6 = true;
                }
            }
        }
        if (z6) {
            RectF rectF = this.f3838b;
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
            getBounds(rectF, matrix2, true);
            U1.a aVar = this.f3837a;
            aVar.setAlpha(i2);
            f2.h.saveLayerCompat(canvas, rectF, aVar);
        }
        if (z6) {
            i2 = 255;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Object obj = arrayList.get(size);
            if (obj instanceof f) {
                ((f) obj).draw(canvas, matrix2, i2);
            }
        }
        if (z6) {
            canvas.restore();
        }
    }

    @Override // V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        Matrix matrix2 = this.f3839c;
        matrix2.set(matrix);
        W1.t tVar = this.f3847k;
        if (tVar != null) {
            matrix2.preConcat(tVar.getMatrix());
        }
        RectF rectF2 = this.f3841e;
        rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
        ArrayList arrayList = this.f3844h;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            d dVar = (d) arrayList.get(size);
            if (dVar instanceof f) {
                ((f) dVar).getBounds(rectF2, matrix2, z6);
                rectF.union(rectF2);
            }
        }
    }

    @Override // V1.d
    public String getName() {
        return this.f3842f;
    }

    @Override // V1.n
    public Path getPath() {
        Matrix matrix = this.f3839c;
        matrix.reset();
        W1.t tVar = this.f3847k;
        if (tVar != null) {
            matrix.set(tVar.getMatrix());
        }
        Path path = this.f3840d;
        path.reset();
        if (!this.f3843g) {
            ArrayList arrayList = this.f3844h;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                d dVar = (d) arrayList.get(size);
                if (dVar instanceof n) {
                    path.addPath(((n) dVar).getPath(), matrix);
                }
            }
        }
        return path;
    }

    @Override // W1.a
    public void onValueChanged() {
        this.f3845i.invalidateSelf();
    }

    @Override // Y1.f
    public void resolveKeyPath(Y1.e eVar, int i2, List<Y1.e> list, Y1.e eVar2) {
        if (!eVar.matches(getName(), i2)) {
            return;
        }
        if (!"__container".equals(getName())) {
            eVar2 = eVar2.addKey(getName());
            if (eVar.fullyResolvesTo(getName(), i2)) {
                list.add(eVar2.resolve(this));
            }
        }
        if (!eVar.propagateToChildren(getName(), i2)) {
            return;
        }
        int incrementDepthBy = eVar.incrementDepthBy(getName(), i2) + i2;
        int i7 = 0;
        while (true) {
            ArrayList arrayList = this.f3844h;
            if (i7 >= arrayList.size()) {
                return;
            }
            d dVar = (d) arrayList.get(i7);
            if (dVar instanceof Y1.f) {
                ((Y1.f) dVar).resolveKeyPath(eVar, incrementDepthBy, list, eVar2);
            }
            i7++;
        }
    }

    @Override // V1.d
    public void setContents(List<d> list, List<d> list2) {
        int size = list.size();
        ArrayList arrayList = this.f3844h;
        ArrayList arrayList2 = new ArrayList(arrayList.size() + size);
        arrayList2.addAll(list);
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            d dVar = (d) arrayList.get(size2);
            dVar.setContents(arrayList2, arrayList.subList(0, size2));
            arrayList2.add(dVar);
        }
    }

    public e(G g7, AbstractC0642b abstractC0642b, String str, boolean z6, ArrayList arrayList, Z1.l lVar) {
        this.f3837a = new U1.a();
        this.f3838b = new RectF();
        this.f3839c = new Matrix();
        this.f3840d = new Path();
        this.f3841e = new RectF();
        this.f3842f = str;
        this.f3845i = g7;
        this.f3843g = z6;
        this.f3844h = arrayList;
        if (lVar != null) {
            W1.t createAnimation = lVar.createAnimation();
            this.f3847k = createAnimation;
            createAnimation.addAnimationsToLayer(abstractC0642b);
            createAnimation.addListener(this);
        }
        ArrayList arrayList2 = new ArrayList();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            d dVar = (d) arrayList.get(size);
            if (dVar instanceof k) {
                arrayList2.add((k) dVar);
            }
        }
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ((k) arrayList2.get(size2)).absorbContent(arrayList.listIterator(arrayList.size()));
        }
    }
}
