package b2;

import T1.AbstractC0324c;
import T1.G;
import W1.l;
import W1.t;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.airbnb.lottie.model.layer.Layer$MatteType;
import g2.C0949c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: b2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0642b implements V1.f, W1.a, Y1.f {

    /* renamed from: a, reason: collision with root package name */
    public final Path f8393a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f8394b = new Matrix();

    /* renamed from: c, reason: collision with root package name */
    public final U1.a f8395c = new U1.a(1);

    /* renamed from: d, reason: collision with root package name */
    public final U1.a f8396d;

    /* renamed from: e, reason: collision with root package name */
    public final U1.a f8397e;

    /* renamed from: f, reason: collision with root package name */
    public final U1.a f8398f;

    /* renamed from: g, reason: collision with root package name */
    public final U1.a f8399g;

    /* renamed from: h, reason: collision with root package name */
    public final RectF f8400h;

    /* renamed from: i, reason: collision with root package name */
    public final RectF f8401i;

    /* renamed from: j, reason: collision with root package name */
    public final RectF f8402j;

    /* renamed from: k, reason: collision with root package name */
    public final RectF f8403k;

    /* renamed from: l, reason: collision with root package name */
    public final String f8404l;

    /* renamed from: m, reason: collision with root package name */
    public final Matrix f8405m;

    /* renamed from: n, reason: collision with root package name */
    public final G f8406n;

    /* renamed from: o, reason: collision with root package name */
    public final C0645e f8407o;

    /* renamed from: p, reason: collision with root package name */
    public final l f8408p;

    /* renamed from: q, reason: collision with root package name */
    public final W1.h f8409q;

    /* renamed from: r, reason: collision with root package name */
    public AbstractC0642b f8410r;

    /* renamed from: s, reason: collision with root package name */
    public AbstractC0642b f8411s;

    /* renamed from: t, reason: collision with root package name */
    public List f8412t;

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f8413u;

    /* renamed from: v, reason: collision with root package name */
    public final t f8414v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f8415w;

    public AbstractC0642b(G g7, C0645e c0645e) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.f8396d = new U1.a(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.f8397e = new U1.a(1, mode2);
        U1.a aVar = new U1.a(1);
        this.f8398f = aVar;
        this.f8399g = new U1.a(PorterDuff.Mode.CLEAR);
        this.f8400h = new RectF();
        this.f8401i = new RectF();
        this.f8402j = new RectF();
        this.f8403k = new RectF();
        this.f8405m = new Matrix();
        this.f8413u = new ArrayList();
        this.f8415w = true;
        this.f8406n = g7;
        this.f8407o = c0645e;
        this.f8404l = A.i.o(new StringBuilder(), c0645e.f8427c, "#draw");
        if (c0645e.f8445u == Layer$MatteType.f9056e) {
            aVar.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            aVar.setXfermode(new PorterDuffXfermode(mode));
        }
        t createAnimation = c0645e.f8433i.createAnimation();
        this.f8414v = createAnimation;
        createAnimation.addListener(this);
        List list = c0645e.f8432h;
        if (list != null && !list.isEmpty()) {
            l lVar = new l(list);
            this.f8408p = lVar;
            Iterator<W1.f> it = lVar.getMaskAnimations().iterator();
            while (it.hasNext()) {
                it.next().addUpdateListener(this);
            }
            for (W1.f fVar : this.f8408p.getOpacityAnimations()) {
                addAnimation(fVar);
                fVar.addUpdateListener(this);
            }
        }
        C0645e c0645e2 = this.f8407o;
        if (c0645e2.f8444t.isEmpty()) {
            if (true != this.f8415w) {
                this.f8415w = true;
                this.f8406n.invalidateSelf();
                return;
            }
            return;
        }
        W1.h hVar = new W1.h(c0645e2.f8444t);
        this.f8409q = hVar;
        hVar.setIsDiscrete();
        this.f8409q.addUpdateListener(new C0641a(this));
        boolean z6 = ((Float) this.f8409q.getValue()).floatValue() == 1.0f;
        if (z6 != this.f8415w) {
            this.f8415w = z6;
            this.f8406n.invalidateSelf();
        }
        addAnimation(this.f8409q);
    }

    public final void a() {
        if (this.f8412t != null) {
            return;
        }
        if (this.f8411s == null) {
            this.f8412t = Collections.EMPTY_LIST;
            return;
        }
        this.f8412t = new ArrayList();
        for (AbstractC0642b abstractC0642b = this.f8411s; abstractC0642b != null; abstractC0642b = abstractC0642b.f8411s) {
            this.f8412t.add(abstractC0642b);
        }
    }

    public void addAnimation(W1.f fVar) {
        if (fVar == null) {
            return;
        }
        this.f8413u.add(fVar);
    }

    @Override // Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        this.f8414v.applyValueCallback(t6, c0949c);
    }

    public final void b(Canvas canvas) {
        AbstractC0324c.beginSection("Layer#clearLayer");
        RectF rectF = this.f8400h;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f8399g);
        AbstractC0324c.endSection("Layer#clearLayer");
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01cc  */
    @Override // V1.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r25, android.graphics.Matrix r26, int r27) {
        /*
            Method dump skipped, instructions count: 1015
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b2.AbstractC0642b.draw(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }

    public abstract void drawLayer(Canvas canvas, Matrix matrix, int i2);

    @Override // V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        this.f8400h.set(0.0f, 0.0f, 0.0f, 0.0f);
        a();
        Matrix matrix2 = this.f8405m;
        matrix2.set(matrix);
        if (z6) {
            List list = this.f8412t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    matrix2.preConcat(((AbstractC0642b) this.f8412t.get(size)).f8414v.getMatrix());
                }
            } else {
                AbstractC0642b abstractC0642b = this.f8411s;
                if (abstractC0642b != null) {
                    matrix2.preConcat(abstractC0642b.f8414v.getMatrix());
                }
            }
        }
        matrix2.preConcat(this.f8414v.getMatrix());
    }

    @Override // V1.d
    public String getName() {
        return this.f8407o.f8427c;
    }

    @Override // W1.a
    public void onValueChanged() {
        this.f8406n.invalidateSelf();
    }

    public void removeAnimation(W1.f fVar) {
        this.f8413u.remove(fVar);
    }

    @Override // Y1.f
    public void resolveKeyPath(Y1.e eVar, int i2, List<Y1.e> list, Y1.e eVar2) {
        if (eVar.matches(getName(), i2)) {
            if (!"__container".equals(getName())) {
                eVar2 = eVar2.addKey(getName());
                if (eVar.fullyResolvesTo(getName(), i2)) {
                    list.add(eVar2.resolve(this));
                }
            }
            if (eVar.propagateToChildren(getName(), i2)) {
                resolveChildKeyPath(eVar, eVar.incrementDepthBy(getName(), i2) + i2, list, eVar2);
            }
        }
    }

    public void setProgress(float f3) {
        this.f8414v.setProgress(f3);
        l lVar = this.f8408p;
        int i2 = 0;
        if (lVar != null) {
            for (int i7 = 0; i7 < lVar.getMaskAnimations().size(); i7++) {
                lVar.getMaskAnimations().get(i7).setProgress(f3);
            }
        }
        float f7 = this.f8407o.f8437m;
        if (f7 != 0.0f) {
            f3 /= f7;
        }
        W1.h hVar = this.f8409q;
        if (hVar != null) {
            hVar.setProgress(f3 / f7);
        }
        AbstractC0642b abstractC0642b = this.f8410r;
        if (abstractC0642b != null) {
            abstractC0642b.setProgress(abstractC0642b.f8407o.f8437m * f3);
        }
        while (true) {
            ArrayList arrayList = this.f8413u;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((W1.f) arrayList.get(i2)).setProgress(f3);
            i2++;
        }
    }

    @Override // V1.d
    public void setContents(List<V1.d> list, List<V1.d> list2) {
    }

    public void resolveChildKeyPath(Y1.e eVar, int i2, List list, Y1.e eVar2) {
    }
}
