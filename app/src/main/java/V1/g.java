package V1;

import T1.G;
import T1.K;
import a2.C0380a;
import android.graphics.Path;
import android.graphics.PointF;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import g2.C0949c;
import java.util.List;

/* loaded from: classes.dex */
public final class g implements n, W1.a, l {

    /* renamed from: b, reason: collision with root package name */
    public final String f3849b;

    /* renamed from: c, reason: collision with root package name */
    public final G f3850c;

    /* renamed from: d, reason: collision with root package name */
    public final W1.f f3851d;

    /* renamed from: e, reason: collision with root package name */
    public final W1.f f3852e;

    /* renamed from: f, reason: collision with root package name */
    public final C0380a f3853f;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3855h;

    /* renamed from: a, reason: collision with root package name */
    public final Path f3848a = new Path();

    /* renamed from: g, reason: collision with root package name */
    public final c f3854g = new c();

    public g(G g7, AbstractC0642b abstractC0642b, C0380a c0380a) {
        this.f3849b = c0380a.getName();
        this.f3850c = g7;
        W1.f createAnimation = c0380a.getSize().createAnimation();
        this.f3851d = createAnimation;
        W1.f createAnimation2 = c0380a.getPosition().createAnimation();
        this.f3852e = createAnimation2;
        this.f3853f = c0380a;
        abstractC0642b.addAnimation(createAnimation);
        abstractC0642b.addAnimation(createAnimation2);
        createAnimation.addUpdateListener(this);
        createAnimation2.addUpdateListener(this);
    }

    @Override // Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        if (t6 == K.f3559c) {
            this.f3851d.setValueCallback(c0949c);
        } else if (t6 == K.f3562f) {
            this.f3852e.setValueCallback(c0949c);
        }
    }

    @Override // V1.d
    public String getName() {
        return this.f3849b;
    }

    @Override // V1.n
    public Path getPath() {
        boolean z6 = this.f3855h;
        Path path = this.f3848a;
        if (z6) {
            return path;
        }
        path.reset();
        C0380a c0380a = this.f3853f;
        if (c0380a.isHidden()) {
            this.f3855h = true;
            return path;
        }
        PointF pointF = (PointF) this.f3851d.getValue();
        float f3 = pointF.x / 2.0f;
        float f7 = pointF.y / 2.0f;
        float f8 = f3 * 0.55228f;
        float f9 = f7 * 0.55228f;
        path.reset();
        if (c0380a.isReversed()) {
            float f10 = -f7;
            path.moveTo(0.0f, f10);
            float f11 = 0.0f - f8;
            float f12 = -f3;
            float f13 = 0.0f - f9;
            path.cubicTo(f11, f10, f12, f13, f12, 0.0f);
            float f14 = f9 + 0.0f;
            path.cubicTo(f12, f14, f11, f7, 0.0f, f7);
            float f15 = f8 + 0.0f;
            path.cubicTo(f15, f7, f3, f14, f3, 0.0f);
            path.cubicTo(f3, f13, f15, f10, 0.0f, f10);
        } else {
            float f16 = -f7;
            path.moveTo(0.0f, f16);
            float f17 = f8 + 0.0f;
            float f18 = 0.0f - f9;
            path.cubicTo(f17, f16, f3, f18, f3, 0.0f);
            float f19 = f9 + 0.0f;
            path.cubicTo(f3, f19, f17, f7, 0.0f, f7);
            float f20 = 0.0f - f8;
            float f21 = -f3;
            path.cubicTo(f20, f7, f21, f19, f21, 0.0f);
            path.cubicTo(f21, f18, f20, f16, 0.0f, f16);
        }
        PointF pointF2 = (PointF) this.f3852e.getValue();
        path.offset(pointF2.x, pointF2.y);
        path.close();
        this.f3854g.apply(path);
        this.f3855h = true;
        return path;
    }

    @Override // W1.a
    public void onValueChanged() {
        this.f3855h = false;
        this.f3850c.invalidateSelf();
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
                    this.f3854g.f3836a.add(tVar);
                    tVar.a(this);
                }
            }
        }
    }
}
