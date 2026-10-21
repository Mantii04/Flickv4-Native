package V1;

import T1.G;
import T1.K;
import W1.u;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.GradientType;
import g2.C0949c;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class i implements f, W1.a, l {

    /* renamed from: a, reason: collision with root package name */
    public final String f3866a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3867b;

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0642b f3868c;

    /* renamed from: d, reason: collision with root package name */
    public final p.n f3869d = new p.n();

    /* renamed from: e, reason: collision with root package name */
    public final p.n f3870e = new p.n();

    /* renamed from: f, reason: collision with root package name */
    public final Path f3871f;

    /* renamed from: g, reason: collision with root package name */
    public final U1.a f3872g;

    /* renamed from: h, reason: collision with root package name */
    public final RectF f3873h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f3874i;

    /* renamed from: j, reason: collision with root package name */
    public final GradientType f3875j;

    /* renamed from: k, reason: collision with root package name */
    public final W1.f f3876k;

    /* renamed from: l, reason: collision with root package name */
    public final W1.f f3877l;

    /* renamed from: m, reason: collision with root package name */
    public final W1.f f3878m;

    /* renamed from: n, reason: collision with root package name */
    public final W1.f f3879n;

    /* renamed from: o, reason: collision with root package name */
    public u f3880o;

    /* renamed from: p, reason: collision with root package name */
    public u f3881p;

    /* renamed from: q, reason: collision with root package name */
    public final G f3882q;

    /* renamed from: r, reason: collision with root package name */
    public final int f3883r;

    public i(G g7, AbstractC0642b abstractC0642b, a2.d dVar) {
        Path path = new Path();
        this.f3871f = path;
        this.f3872g = new U1.a(1);
        this.f3873h = new RectF();
        this.f3874i = new ArrayList();
        this.f3868c = abstractC0642b;
        this.f3866a = dVar.getName();
        this.f3867b = dVar.isHidden();
        this.f3882q = g7;
        this.f3875j = dVar.getGradientType();
        path.setFillType(dVar.getFillType());
        this.f3883r = (int) (g7.getComposition().getDuration() / 32.0f);
        W1.f createAnimation = dVar.getGradientColor().createAnimation();
        this.f3876k = createAnimation;
        createAnimation.addUpdateListener(this);
        abstractC0642b.addAnimation(createAnimation);
        W1.f createAnimation2 = dVar.getOpacity().createAnimation();
        this.f3877l = createAnimation2;
        createAnimation2.addUpdateListener(this);
        abstractC0642b.addAnimation(createAnimation2);
        W1.f createAnimation3 = dVar.getStartPoint().createAnimation();
        this.f3878m = createAnimation3;
        createAnimation3.addUpdateListener(this);
        abstractC0642b.addAnimation(createAnimation3);
        W1.f createAnimation4 = dVar.getEndPoint().createAnimation();
        this.f3879n = createAnimation4;
        createAnimation4.addUpdateListener(this);
        abstractC0642b.addAnimation(createAnimation4);
    }

    public final int[] a(int[] iArr) {
        u uVar = this.f3881p;
        if (uVar != null) {
            Integer[] numArr = (Integer[]) uVar.getValue();
            int i2 = 0;
            if (iArr.length == numArr.length) {
                while (i2 < iArr.length) {
                    iArr[i2] = numArr[i2].intValue();
                    i2++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i2 < numArr.length) {
                    iArr[i2] = numArr[i2].intValue();
                    i2++;
                }
            }
        }
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        PointF pointF = K.f3557a;
        if (t6 == 4) {
            this.f3877l.setValueCallback(c0949c);
            return;
        }
        ColorFilter colorFilter = K.f3581y;
        AbstractC0642b abstractC0642b = this.f3868c;
        if (t6 == colorFilter) {
            u uVar = this.f3880o;
            if (uVar != null) {
                abstractC0642b.removeAnimation(uVar);
            }
            if (c0949c == null) {
                this.f3880o = null;
                return;
            }
            u uVar2 = new u(c0949c);
            this.f3880o = uVar2;
            uVar2.addUpdateListener(this);
            abstractC0642b.addAnimation(this.f3880o);
            return;
        }
        if (t6 == K.f3582z) {
            u uVar3 = this.f3881p;
            if (uVar3 != null) {
                abstractC0642b.removeAnimation(uVar3);
            }
            if (c0949c == null) {
                this.f3881p = null;
                return;
            }
            u uVar4 = new u(c0949c);
            this.f3881p = uVar4;
            uVar4.addUpdateListener(this);
            abstractC0642b.addAnimation(this.f3881p);
        }
    }

    public final int b() {
        float progress = this.f3878m.getProgress();
        int i2 = this.f3883r;
        int round = Math.round(progress * i2);
        int round2 = Math.round(this.f3879n.getProgress() * i2);
        int round3 = Math.round(this.f3876k.getProgress() * i2);
        int i7 = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i7 = i7 * 31 * round2;
        }
        return round3 != 0 ? i7 * 31 * round3 : i7;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00e2  */
    @Override // V1.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r21, android.graphics.Matrix r22, int r23) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: V1.i.draw(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }

    @Override // V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        Path path = this.f3871f;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f3874i;
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
        return this.f3866a;
    }

    @Override // W1.a
    public void onValueChanged() {
        this.f3882q.invalidateSelf();
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
                this.f3874i.add((n) dVar);
            }
        }
    }
}
