package V1;

import T1.G;
import T1.K;
import W1.u;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import b2.AbstractC0642b;
import g2.C0949c;

/* loaded from: classes.dex */
public final class s extends b {

    /* renamed from: o, reason: collision with root package name */
    public final AbstractC0642b f3940o;

    /* renamed from: p, reason: collision with root package name */
    public final String f3941p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f3942q;

    /* renamed from: r, reason: collision with root package name */
    public final W1.f f3943r;

    /* renamed from: s, reason: collision with root package name */
    public u f3944s;

    public s(G g7, AbstractC0642b abstractC0642b, a2.o oVar) {
        super(g7, abstractC0642b, oVar.getCapType().toPaintCap(), oVar.getJoinType().toPaintJoin(), oVar.getMiterLimit(), oVar.getOpacity(), oVar.getWidth(), oVar.getLineDashPattern(), oVar.getDashOffset());
        this.f3940o = abstractC0642b;
        this.f3941p = oVar.getName();
        this.f3942q = oVar.isHidden();
        W1.f createAnimation = oVar.getColor().createAnimation();
        this.f3943r = createAnimation;
        createAnimation.addUpdateListener(this);
        abstractC0642b.addAnimation(createAnimation);
    }

    @Override // V1.b, Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        super.addValueCallback(t6, c0949c);
        PointF pointF = K.f3557a;
        W1.f fVar = this.f3943r;
        if (t6 == 2) {
            fVar.setValueCallback(c0949c);
            return;
        }
        if (t6 == K.f3581y) {
            u uVar = this.f3944s;
            AbstractC0642b abstractC0642b = this.f3940o;
            if (uVar != null) {
                abstractC0642b.removeAnimation(uVar);
            }
            if (c0949c == null) {
                this.f3944s = null;
                return;
            }
            u uVar2 = new u(c0949c);
            this.f3944s = uVar2;
            uVar2.addUpdateListener(this);
            abstractC0642b.addAnimation(fVar);
        }
    }

    @Override // V1.b, V1.f
    public void draw(Canvas canvas, Matrix matrix, int i2) {
        if (this.f3942q) {
            return;
        }
        int intValue = ((W1.g) this.f3943r).getIntValue();
        U1.a aVar = this.f3830i;
        aVar.setColor(intValue);
        u uVar = this.f3944s;
        if (uVar != null) {
            aVar.setColorFilter((ColorFilter) uVar.getValue());
        }
        super.draw(canvas, matrix, i2);
    }

    @Override // V1.d
    public String getName() {
        return this.f3941p;
    }
}
