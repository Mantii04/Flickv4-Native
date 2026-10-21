package b2;

import T1.AbstractC0324c;
import T1.C0330i;
import T1.G;
import T1.K;
import W1.u;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import f2.AbstractC0923d;
import g2.C0949c;
import java.util.ArrayList;
import java.util.List;
import p.n;

/* renamed from: b2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0643c extends AbstractC0642b {

    /* renamed from: A, reason: collision with root package name */
    public final RectF f8416A;

    /* renamed from: B, reason: collision with root package name */
    public final Paint f8417B;

    /* renamed from: x, reason: collision with root package name */
    public W1.f f8418x;

    /* renamed from: y, reason: collision with root package name */
    public final ArrayList f8419y;

    /* renamed from: z, reason: collision with root package name */
    public final RectF f8420z;

    public C0643c(G g7, C0645e c0645e, List<C0645e> list, C0330i c0330i) {
        super(g7, c0645e);
        int i2;
        AbstractC0642b abstractC0642b;
        AbstractC0642b c0643c;
        this.f8419y = new ArrayList();
        this.f8420z = new RectF();
        this.f8416A = new RectF();
        this.f8417B = new Paint();
        Z1.b bVar = c0645e.f8443s;
        if (bVar != null) {
            W1.f createAnimation = bVar.createAnimation();
            this.f8418x = createAnimation;
            addAnimation(createAnimation);
            this.f8418x.addUpdateListener(this);
        } else {
            this.f8418x = null;
        }
        n nVar = new n(c0330i.getLayers().size());
        int size = list.size() - 1;
        AbstractC0642b abstractC0642b2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            C0645e c0645e2 = list.get(size);
            int ordinal = c0645e2.getLayerType().ordinal();
            if (ordinal == 0) {
                c0643c = new C0643c(g7, c0645e2, c0330i.getPrecomps(c0645e2.f8431g), c0330i);
            } else if (ordinal == 1) {
                c0643c = new C0648h(g7, c0645e2);
            } else if (ordinal == 2) {
                c0643c = new C0644d(g7, c0645e2);
            } else if (ordinal == 3) {
                c0643c = new C0646f(g7, c0645e2);
            } else if (ordinal == 4) {
                c0643c = new C0647g(g7, c0645e2);
            } else if (ordinal != 5) {
                AbstractC0923d.warning("Unknown layer type " + c0645e2.getLayerType());
                c0643c = null;
            } else {
                c0643c = new j(g7, c0645e2);
            }
            if (c0643c != null) {
                nVar.put(c0643c.f8407o.getId(), c0643c);
                if (abstractC0642b2 != null) {
                    abstractC0642b2.f8410r = c0643c;
                    abstractC0642b2 = null;
                } else {
                    this.f8419y.add(0, c0643c);
                    int ordinal2 = c0645e2.f8445u.ordinal();
                    if (ordinal2 == 1 || ordinal2 == 2) {
                        abstractC0642b2 = c0643c;
                    }
                }
            }
            size--;
        }
        for (i2 = 0; i2 < nVar.size(); i2++) {
            AbstractC0642b abstractC0642b3 = (AbstractC0642b) nVar.get(nVar.keyAt(i2));
            if (abstractC0642b3 != null && (abstractC0642b = (AbstractC0642b) nVar.get(abstractC0642b3.f8407o.f8430f)) != null) {
                abstractC0642b3.f8411s = abstractC0642b;
            }
        }
    }

    @Override // b2.AbstractC0642b, Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        super.addValueCallback(t6, c0949c);
        if (t6 == K.f3579w) {
            if (c0949c == null) {
                W1.f fVar = this.f8418x;
                if (fVar != null) {
                    fVar.setValueCallback(null);
                    return;
                }
                return;
            }
            u uVar = new u(c0949c);
            this.f8418x = uVar;
            uVar.addUpdateListener(this);
            addAnimation(this.f8418x);
        }
    }

    @Override // b2.AbstractC0642b
    public final void drawLayer(Canvas canvas, Matrix matrix, int i2) {
        AbstractC0324c.beginSection("CompositionLayer#draw");
        RectF rectF = this.f8416A;
        C0645e c0645e = this.f8407o;
        rectF.set(0.0f, 0.0f, c0645e.f8439o, c0645e.f8440p);
        matrix.mapRect(rectF);
        boolean isApplyingOpacityToLayersEnabled = this.f8406n.isApplyingOpacityToLayersEnabled();
        ArrayList arrayList = this.f8419y;
        boolean z6 = isApplyingOpacityToLayersEnabled && arrayList.size() > 1 && i2 != 255;
        if (z6) {
            Paint paint = this.f8417B;
            paint.setAlpha(i2);
            f2.h.saveLayerCompat(canvas, rectF, paint);
        } else {
            canvas.save();
        }
        if (z6) {
            i2 = 255;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!rectF.isEmpty() ? canvas.clipRect(rectF) : true) {
                ((AbstractC0642b) arrayList.get(size)).draw(canvas, matrix, i2);
            }
        }
        canvas.restore();
        AbstractC0324c.endSection("CompositionLayer#draw");
    }

    @Override // b2.AbstractC0642b, V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        super.getBounds(rectF, matrix, z6);
        ArrayList arrayList = this.f8419y;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RectF rectF2 = this.f8420z;
            rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
            ((AbstractC0642b) arrayList.get(size)).getBounds(rectF2, this.f8405m, true);
            rectF.union(rectF2);
        }
    }

    @Override // b2.AbstractC0642b
    public void resolveChildKeyPath(Y1.e eVar, int i2, List<Y1.e> list, Y1.e eVar2) {
        int i7 = 0;
        while (true) {
            ArrayList arrayList = this.f8419y;
            if (i7 >= arrayList.size()) {
                return;
            }
            ((AbstractC0642b) arrayList.get(i7)).resolveKeyPath(eVar, i2, list, eVar2);
            i7++;
        }
    }

    @Override // b2.AbstractC0642b
    public void setProgress(float f3) {
        super.setProgress(f3);
        W1.f fVar = this.f8418x;
        C0645e c0645e = this.f8407o;
        if (fVar != null) {
            f3 = ((c0645e.f8426b.getFrameRate() * ((Float) this.f8418x.getValue()).floatValue()) - c0645e.f8426b.getStartFrame()) / (this.f8406n.getComposition().getDurationFrames() + 0.01f);
        }
        if (this.f8418x == null) {
            f3 -= c0645e.f8438n / c0645e.f8426b.getDurationFrames();
        }
        float f7 = c0645e.f8437m;
        if (f7 != 0.0f) {
            f3 /= f7;
        }
        ArrayList arrayList = this.f8419y;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((AbstractC0642b) arrayList.get(size)).setProgress(f3);
        }
    }
}
