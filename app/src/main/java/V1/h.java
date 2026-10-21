package V1;

import T1.AbstractC0324c;
import T1.G;
import T1.K;
import W1.u;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import b2.AbstractC0642b;
import g2.C0949c;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class h implements f, W1.a, l {

    /* renamed from: a, reason: collision with root package name */
    public final Path f3856a;

    /* renamed from: b, reason: collision with root package name */
    public final U1.a f3857b;

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0642b f3858c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3859d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f3860e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f3861f;

    /* renamed from: g, reason: collision with root package name */
    public final W1.f f3862g;

    /* renamed from: h, reason: collision with root package name */
    public final W1.f f3863h;

    /* renamed from: i, reason: collision with root package name */
    public u f3864i;

    /* renamed from: j, reason: collision with root package name */
    public final G f3865j;

    public h(G g7, AbstractC0642b abstractC0642b, a2.l lVar) {
        Path path = new Path();
        this.f3856a = path;
        this.f3857b = new U1.a(1);
        this.f3861f = new ArrayList();
        this.f3858c = abstractC0642b;
        this.f3859d = lVar.getName();
        this.f3860e = lVar.isHidden();
        this.f3865j = g7;
        if (lVar.getColor() == null || lVar.getOpacity() == null) {
            this.f3862g = null;
            this.f3863h = null;
            return;
        }
        path.setFillType(lVar.getFillType());
        W1.f createAnimation = lVar.getColor().createAnimation();
        this.f3862g = createAnimation;
        createAnimation.addUpdateListener(this);
        abstractC0642b.addAnimation(createAnimation);
        W1.f createAnimation2 = lVar.getOpacity().createAnimation();
        this.f3863h = createAnimation2;
        createAnimation2.addUpdateListener(this);
        abstractC0642b.addAnimation(createAnimation2);
    }

    @Override // Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        PointF pointF = K.f3557a;
        if (t6 == 1) {
            this.f3862g.setValueCallback(c0949c);
            return;
        }
        if (t6 == 4) {
            this.f3863h.setValueCallback(c0949c);
            return;
        }
        if (t6 == K.f3581y) {
            u uVar = this.f3864i;
            AbstractC0642b abstractC0642b = this.f3858c;
            if (uVar != null) {
                abstractC0642b.removeAnimation(uVar);
            }
            if (c0949c == null) {
                this.f3864i = null;
                return;
            }
            u uVar2 = new u(c0949c);
            this.f3864i = uVar2;
            uVar2.addUpdateListener(this);
            abstractC0642b.addAnimation(this.f3864i);
        }
    }

    @Override // V1.f
    public void draw(Canvas canvas, Matrix matrix, int i2) {
        if (this.f3860e) {
            return;
        }
        AbstractC0324c.beginSection("FillContent#draw");
        int intValue = ((W1.g) this.f3862g).getIntValue();
        U1.a aVar = this.f3857b;
        aVar.setColor(intValue);
        int i7 = 0;
        aVar.setAlpha(f2.g.clamp((int) ((((i2 / 255.0f) * ((Integer) this.f3863h.getValue()).intValue()) / 100.0f) * 255.0f), 0, 255));
        u uVar = this.f3864i;
        if (uVar != null) {
            aVar.setColorFilter((ColorFilter) uVar.getValue());
        }
        Path path = this.f3856a;
        path.reset();
        while (true) {
            ArrayList arrayList = this.f3861f;
            if (i7 >= arrayList.size()) {
                canvas.drawPath(path, aVar);
                AbstractC0324c.endSection("FillContent#draw");
                return;
            } else {
                path.addPath(((n) arrayList.get(i7)).getPath(), matrix);
                i7++;
            }
        }
    }

    @Override // V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        Path path = this.f3856a;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f3861f;
            if (i2 >= arrayList.size()) {
                path.computeBounds(rectF, false);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                return;
            } else {
                path.addPath(((n) arrayList.get(i2)).getPath(), matrix);
                i2++;
            }
        }
    }

    @Override // V1.d
    public String getName() {
        return this.f3859d;
    }

    @Override // W1.a
    public void onValueChanged() {
        this.f3865j.invalidateSelf();
    }

    @Override // Y1.f
    public void resolveKeyPath(Y1.e eVar, int i2, List<Y1.e> list, Y1.e eVar2) {
        f2.g.resolveKeyPath(eVar, i2, list, eVar2, this);
    }

    @Override // V1.d
    public void setContents(List<d> list, List<d> list2) {
        for (int i2 = 0; i2 < list2.size(); i2++) {
            d dVar = list2.get(i2);
            if (dVar instanceof n) {
                this.f3861f.add((n) dVar);
            }
        }
    }
}
