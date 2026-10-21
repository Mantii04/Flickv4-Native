package V1;

import T1.G;
import T1.K;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import g2.C0949c;
import java.util.List;

/* loaded from: classes.dex */
public final class p implements W1.a, l, n {

    /* renamed from: c, reason: collision with root package name */
    public final String f3916c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f3917d;

    /* renamed from: e, reason: collision with root package name */
    public final G f3918e;

    /* renamed from: f, reason: collision with root package name */
    public final W1.f f3919f;

    /* renamed from: g, reason: collision with root package name */
    public final W1.f f3920g;

    /* renamed from: h, reason: collision with root package name */
    public final W1.f f3921h;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3923j;

    /* renamed from: a, reason: collision with root package name */
    public final Path f3914a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final RectF f3915b = new RectF();

    /* renamed from: i, reason: collision with root package name */
    public final c f3922i = new c();

    public p(G g7, AbstractC0642b abstractC0642b, a2.i iVar) {
        this.f3916c = iVar.getName();
        this.f3917d = iVar.isHidden();
        this.f3918e = g7;
        W1.f createAnimation = iVar.getPosition().createAnimation();
        this.f3919f = createAnimation;
        W1.f createAnimation2 = iVar.getSize().createAnimation();
        this.f3920g = createAnimation2;
        W1.f createAnimation3 = iVar.getCornerRadius().createAnimation();
        this.f3921h = createAnimation3;
        abstractC0642b.addAnimation(createAnimation);
        abstractC0642b.addAnimation(createAnimation2);
        abstractC0642b.addAnimation(createAnimation3);
        createAnimation.addUpdateListener(this);
        createAnimation2.addUpdateListener(this);
        createAnimation3.addUpdateListener(this);
    }

    @Override // Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        if (t6 == K.f3560d) {
            this.f3920g.setValueCallback(c0949c);
        } else if (t6 == K.f3562f) {
            this.f3919f.setValueCallback(c0949c);
        } else if (t6 == K.f3561e) {
            this.f3921h.setValueCallback(c0949c);
        }
    }

    @Override // V1.d
    public String getName() {
        return this.f3916c;
    }

    @Override // V1.n
    public Path getPath() {
        float f3;
        boolean z6 = this.f3923j;
        Path path = this.f3914a;
        if (z6) {
            return path;
        }
        path.reset();
        if (this.f3917d) {
            this.f3923j = true;
            return path;
        }
        PointF pointF = (PointF) this.f3920g.getValue();
        float f7 = pointF.x / 2.0f;
        float f8 = pointF.y / 2.0f;
        W1.f fVar = this.f3921h;
        float floatValue = fVar == null ? 0.0f : ((W1.h) fVar).getFloatValue();
        float min = Math.min(f7, f8);
        if (floatValue > min) {
            floatValue = min;
        }
        PointF pointF2 = (PointF) this.f3919f.getValue();
        path.moveTo(pointF2.x + f7, (pointF2.y - f8) + floatValue);
        path.lineTo(pointF2.x + f7, (pointF2.y + f8) - floatValue);
        RectF rectF = this.f3915b;
        if (floatValue > 0.0f) {
            float f9 = pointF2.x + f7;
            float f10 = floatValue * 2.0f;
            f3 = 2.0f;
            float f11 = pointF2.y + f8;
            rectF.set(f9 - f10, f11 - f10, f9, f11);
            path.arcTo(rectF, 0.0f, 90.0f, false);
        } else {
            f3 = 2.0f;
        }
        path.lineTo((pointF2.x - f7) + floatValue, pointF2.y + f8);
        if (floatValue > 0.0f) {
            float f12 = pointF2.x - f7;
            float f13 = pointF2.y + f8;
            float f14 = floatValue * f3;
            rectF.set(f12, f13 - f14, f14 + f12, f13);
            path.arcTo(rectF, 90.0f, 90.0f, false);
        }
        path.lineTo(pointF2.x - f7, (pointF2.y - f8) + floatValue);
        if (floatValue > 0.0f) {
            float f15 = pointF2.x - f7;
            float f16 = pointF2.y - f8;
            float f17 = floatValue * f3;
            rectF.set(f15, f16, f15 + f17, f17 + f16);
            path.arcTo(rectF, 180.0f, 90.0f, false);
        }
        path.lineTo((pointF2.x + f7) - floatValue, pointF2.y - f8);
        if (floatValue > 0.0f) {
            float f18 = pointF2.x + f7;
            float f19 = floatValue * f3;
            float f20 = pointF2.y - f8;
            rectF.set(f18 - f19, f20, f18, f19 + f20);
            path.arcTo(rectF, 270.0f, 90.0f, false);
        }
        path.close();
        this.f3922i.apply(path);
        this.f3923j = true;
        return path;
    }

    @Override // W1.a
    public void onValueChanged() {
        this.f3923j = false;
        this.f3918e.invalidateSelf();
    }

    @Override // Y1.f
    public void resolveKeyPath(Y1.e eVar, int i2, List<Y1.e> list, Y1.e eVar2) {
        f2.g.resolveKeyPath(eVar, i2, list, eVar2, this);
    }

    @Override // V1.d
    public void setContents(List<d> list, List<d> list2) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            d dVar = list.get(i2);
            if (dVar instanceof t) {
                t tVar = (t) dVar;
                if (tVar.f3947c == ShapeTrimPath$Type.f9048b) {
                    this.f3922i.f3836a.add(tVar);
                    tVar.a(this);
                }
            }
        }
    }
}
