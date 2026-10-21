package V1;

import T1.G;
import T1.K;
import android.graphics.Path;
import android.graphics.PointF;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.PolystarShape$Type;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import g2.C0949c;
import java.util.List;

/* loaded from: classes.dex */
public final class o implements n, W1.a, l {

    /* renamed from: b, reason: collision with root package name */
    public final String f3901b;

    /* renamed from: c, reason: collision with root package name */
    public final G f3902c;

    /* renamed from: d, reason: collision with root package name */
    public final PolystarShape$Type f3903d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f3904e;

    /* renamed from: f, reason: collision with root package name */
    public final W1.f f3905f;

    /* renamed from: g, reason: collision with root package name */
    public final W1.f f3906g;

    /* renamed from: h, reason: collision with root package name */
    public final W1.f f3907h;

    /* renamed from: i, reason: collision with root package name */
    public final W1.f f3908i;

    /* renamed from: j, reason: collision with root package name */
    public final W1.f f3909j;

    /* renamed from: k, reason: collision with root package name */
    public final W1.f f3910k;

    /* renamed from: l, reason: collision with root package name */
    public final W1.f f3911l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f3913n;

    /* renamed from: a, reason: collision with root package name */
    public final Path f3900a = new Path();

    /* renamed from: m, reason: collision with root package name */
    public final c f3912m = new c();

    public o(G g7, AbstractC0642b abstractC0642b, a2.h hVar) {
        this.f3902c = g7;
        this.f3901b = hVar.getName();
        PolystarShape$Type type = hVar.getType();
        this.f3903d = type;
        this.f3904e = hVar.isHidden();
        W1.f createAnimation = hVar.getPoints().createAnimation();
        this.f3905f = createAnimation;
        W1.f createAnimation2 = hVar.getPosition().createAnimation();
        this.f3906g = createAnimation2;
        W1.f createAnimation3 = hVar.getRotation().createAnimation();
        this.f3907h = createAnimation3;
        W1.f createAnimation4 = hVar.getOuterRadius().createAnimation();
        this.f3909j = createAnimation4;
        W1.f createAnimation5 = hVar.getOuterRoundedness().createAnimation();
        this.f3911l = createAnimation5;
        PolystarShape$Type polystarShape$Type = PolystarShape$Type.STAR;
        if (type == polystarShape$Type) {
            this.f3908i = hVar.getInnerRadius().createAnimation();
            this.f3910k = hVar.getInnerRoundedness().createAnimation();
        } else {
            this.f3908i = null;
            this.f3910k = null;
        }
        abstractC0642b.addAnimation(createAnimation);
        abstractC0642b.addAnimation(createAnimation2);
        abstractC0642b.addAnimation(createAnimation3);
        abstractC0642b.addAnimation(createAnimation4);
        abstractC0642b.addAnimation(createAnimation5);
        if (type == polystarShape$Type) {
            abstractC0642b.addAnimation(this.f3908i);
            abstractC0642b.addAnimation(this.f3910k);
        }
        createAnimation.addUpdateListener(this);
        createAnimation2.addUpdateListener(this);
        createAnimation3.addUpdateListener(this);
        createAnimation4.addUpdateListener(this);
        createAnimation5.addUpdateListener(this);
        if (type == polystarShape$Type) {
            this.f3908i.addUpdateListener(this);
            this.f3910k.addUpdateListener(this);
        }
    }

    @Override // Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        W1.f fVar;
        W1.f fVar2;
        if (t6 == K.f3571o) {
            this.f3905f.setValueCallback(c0949c);
            return;
        }
        if (t6 == K.f3572p) {
            this.f3907h.setValueCallback(c0949c);
            return;
        }
        if (t6 == K.f3562f) {
            this.f3906g.setValueCallback(c0949c);
            return;
        }
        if (t6 == K.f3573q && (fVar2 = this.f3908i) != null) {
            fVar2.setValueCallback(c0949c);
            return;
        }
        if (t6 == K.f3574r) {
            this.f3909j.setValueCallback(c0949c);
            return;
        }
        if (t6 == K.f3575s && (fVar = this.f3910k) != null) {
            fVar.setValueCallback(c0949c);
        } else if (t6 == K.f3576t) {
            this.f3911l.setValueCallback(c0949c);
        }
    }

    @Override // V1.d
    public String getName() {
        return this.f3901b;
    }

    @Override // V1.n
    public Path getPath() {
        float f3;
        float f7;
        float f8;
        double d7;
        float f9;
        float f10;
        float f11;
        float f12;
        int i2;
        float f13;
        float f14;
        float f15;
        int i7;
        double d8;
        boolean z6 = this.f3913n;
        Path path = this.f3900a;
        if (z6) {
            return path;
        }
        path.reset();
        if (this.f3904e) {
            this.f3913n = true;
            return path;
        }
        int ordinal = this.f3903d.ordinal();
        W1.f fVar = this.f3906g;
        W1.f fVar2 = this.f3909j;
        W1.f fVar3 = this.f3911l;
        double d9 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        W1.f fVar4 = this.f3907h;
        W1.f fVar5 = this.f3905f;
        if (ordinal == 0) {
            float floatValue = ((Float) fVar5.getValue()).floatValue();
            if (fVar4 != null) {
                d9 = ((Float) fVar4.getValue()).floatValue();
            }
            double radians = Math.toRadians(d9 - 90.0d);
            double d10 = floatValue;
            float f16 = (float) (6.283185307179586d / d10);
            float f17 = f16 / 2.0f;
            float f18 = floatValue - ((int) floatValue);
            if (f18 != 0.0f) {
                f3 = 2.0f;
                f7 = f17;
                radians += (1.0f - f18) * f17;
            } else {
                f3 = 2.0f;
                f7 = f17;
            }
            float floatValue2 = ((Float) fVar2.getValue()).floatValue();
            float floatValue3 = ((Float) this.f3908i.getValue()).floatValue();
            W1.f fVar6 = this.f3910k;
            float floatValue4 = fVar6 != null ? ((Float) fVar6.getValue()).floatValue() / 100.0f : 0.0f;
            float floatValue5 = fVar3 != null ? ((Float) fVar3.getValue()).floatValue() / 100.0f : 0.0f;
            if (f18 != 0.0f) {
                float a7 = b.c.a(floatValue2, floatValue3, f18, floatValue3);
                double d11 = a7;
                float cos = (float) (Math.cos(radians) * d11);
                float sin = (float) (Math.sin(radians) * d11);
                path.moveTo(cos, sin);
                f9 = cos;
                d7 = radians + ((f16 * f18) / f3);
                f8 = f7;
                f10 = sin;
                f11 = a7;
            } else {
                double d12 = floatValue2;
                float cos2 = (float) (Math.cos(radians) * d12);
                float sin2 = (float) (d12 * Math.sin(radians));
                path.moveTo(cos2, sin2);
                f8 = f7;
                d7 = radians + f8;
                f9 = cos2;
                f10 = sin2;
                f11 = 0.0f;
            }
            double ceil = Math.ceil(d10);
            double d13 = 2.0d;
            double d14 = ceil * 2.0d;
            float f19 = f10;
            float f20 = f9;
            int i8 = 0;
            boolean z7 = false;
            double d15 = d7;
            while (true) {
                double d16 = i8;
                if (d16 >= d14) {
                    break;
                }
                float f21 = z7 ? floatValue2 : floatValue3;
                float f22 = (f11 == 0.0f || d16 != d14 - d13) ? f8 : (f16 * f18) / f3;
                if (f11 == 0.0f || d16 != d14 - 1.0d) {
                    f12 = f21;
                    i2 = i8;
                    f13 = f8;
                } else {
                    f12 = f11;
                    f13 = f8;
                    i2 = i8;
                }
                double d17 = f12;
                float cos3 = (float) (Math.cos(d15) * d17);
                float sin3 = (float) (Math.sin(d15) * d17);
                if (floatValue4 == 0.0f && floatValue5 == 0.0f) {
                    path.lineTo(cos3, sin3);
                    f14 = f18;
                    f15 = cos3;
                } else {
                    f14 = f18;
                    Path path2 = path;
                    float f23 = f19;
                    double atan2 = (float) (Math.atan2(f19, f20) - 1.5707963267948966d);
                    float cos4 = (float) Math.cos(atan2);
                    float sin4 = (float) Math.sin(atan2);
                    double atan22 = (float) (Math.atan2(sin3, cos3) - 1.5707963267948966d);
                    float cos5 = (float) Math.cos(atan22);
                    float sin5 = (float) Math.sin(atan22);
                    float f24 = z7 ? floatValue4 : floatValue5;
                    float f25 = z7 ? floatValue5 : floatValue4;
                    float f26 = (z7 ? floatValue3 : floatValue2) * f24 * 0.47829f;
                    float f27 = cos4 * f26;
                    float f28 = f26 * sin4;
                    float f29 = (z7 ? floatValue2 : floatValue3) * f25 * 0.47829f;
                    float f30 = cos5 * f29;
                    float f31 = f29 * sin5;
                    if (f18 != 0.0f) {
                        if (i2 == 0) {
                            f27 *= f14;
                            f28 *= f14;
                        } else if (d16 == d14 - 1.0d) {
                            f30 *= f14;
                            f31 *= f14;
                        }
                    }
                    f15 = cos3;
                    path = path2;
                    path.cubicTo(f20 - f27, f23 - f28, f30 + cos3, sin3 + f31, f15, sin3);
                }
                d15 += f22;
                z7 = !z7;
                i8 = i2 + 1;
                f20 = f15;
                f19 = sin3;
                f18 = f14;
                f8 = f13;
                d13 = 2.0d;
            }
            PointF pointF = (PointF) fVar.getValue();
            path.offset(pointF.x, pointF.y);
            path.close();
        } else if (ordinal == 1) {
            int floor = (int) Math.floor(((Float) fVar5.getValue()).floatValue());
            if (fVar4 != null) {
                d9 = ((Float) fVar4.getValue()).floatValue();
            }
            double radians2 = Math.toRadians(d9 - 90.0d);
            double d18 = floor;
            float floatValue6 = ((Float) fVar3.getValue()).floatValue() / 100.0f;
            float floatValue7 = ((Float) fVar2.getValue()).floatValue();
            double d19 = floatValue7;
            float cos6 = (float) (Math.cos(radians2) * d19);
            float sin6 = (float) (Math.sin(radians2) * d19);
            path.moveTo(cos6, sin6);
            double d20 = (float) (6.283185307179586d / d18);
            double ceil2 = Math.ceil(d18);
            double d21 = radians2 + d20;
            int i9 = 0;
            while (i9 < ceil2) {
                float cos7 = (float) (Math.cos(d21) * d19);
                W1.f fVar7 = fVar;
                float sin7 = (float) (Math.sin(d21) * d19);
                if (floatValue6 != 0.0f) {
                    i7 = i9;
                    Path path3 = path;
                    double atan23 = (float) (Math.atan2(sin6, cos6) - 1.5707963267948966d);
                    float cos8 = (float) Math.cos(atan23);
                    float sin8 = (float) Math.sin(atan23);
                    d8 = d19;
                    double atan24 = (float) (Math.atan2(sin7, cos7) - 1.5707963267948966d);
                    float f32 = floatValue7 * floatValue6 * 0.25f;
                    float f33 = cos8 * f32;
                    float f34 = f32 * sin8;
                    float cos9 = ((float) Math.cos(atan24)) * f32;
                    float sin9 = sin7 + (f32 * ((float) Math.sin(atan24)));
                    path = path3;
                    path.cubicTo(cos6 - f33, sin6 - f34, cos9 + cos7, sin9, cos7, sin7);
                } else {
                    i7 = i9;
                    d8 = d19;
                    path.lineTo(cos7, sin7);
                }
                d21 += d20;
                i9 = i7 + 1;
                cos6 = cos7;
                sin6 = sin7;
                d19 = d8;
                fVar = fVar7;
            }
            PointF pointF2 = (PointF) fVar.getValue();
            path.offset(pointF2.x, pointF2.y);
            path.close();
        }
        path.close();
        this.f3912m.apply(path);
        this.f3913n = true;
        return path;
    }

    @Override // W1.a
    public void onValueChanged() {
        this.f3913n = false;
        this.f3902c.invalidateSelf();
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
                    this.f3912m.f3836a.add(tVar);
                    tVar.a(this);
                }
            }
        }
    }
}
