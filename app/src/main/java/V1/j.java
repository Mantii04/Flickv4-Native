package V1;

import T1.G;
import T1.K;
import W1.u;
import a2.C0382c;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.GradientType;
import g2.C0949c;

/* loaded from: classes.dex */
public final class j extends b {

    /* renamed from: o, reason: collision with root package name */
    public final String f3884o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f3885p;

    /* renamed from: q, reason: collision with root package name */
    public final p.n f3886q;

    /* renamed from: r, reason: collision with root package name */
    public final p.n f3887r;

    /* renamed from: s, reason: collision with root package name */
    public final RectF f3888s;

    /* renamed from: t, reason: collision with root package name */
    public final GradientType f3889t;

    /* renamed from: u, reason: collision with root package name */
    public final int f3890u;

    /* renamed from: v, reason: collision with root package name */
    public final W1.f f3891v;

    /* renamed from: w, reason: collision with root package name */
    public final W1.f f3892w;

    /* renamed from: x, reason: collision with root package name */
    public final W1.f f3893x;

    /* renamed from: y, reason: collision with root package name */
    public u f3894y;

    public j(G g7, AbstractC0642b abstractC0642b, a2.e eVar) {
        super(g7, abstractC0642b, eVar.getCapType().toPaintCap(), eVar.getJoinType().toPaintJoin(), eVar.getMiterLimit(), eVar.getOpacity(), eVar.getWidth(), eVar.getLineDashPattern(), eVar.getDashOffset());
        this.f3886q = new p.n();
        this.f3887r = new p.n();
        this.f3888s = new RectF();
        this.f3884o = eVar.getName();
        this.f3889t = eVar.getGradientType();
        this.f3885p = eVar.isHidden();
        this.f3890u = (int) (g7.getComposition().getDuration() / 32.0f);
        W1.f createAnimation = eVar.getGradientColor().createAnimation();
        this.f3891v = createAnimation;
        createAnimation.addUpdateListener(this);
        abstractC0642b.addAnimation(createAnimation);
        W1.f createAnimation2 = eVar.getStartPoint().createAnimation();
        this.f3892w = createAnimation2;
        createAnimation2.addUpdateListener(this);
        abstractC0642b.addAnimation(createAnimation2);
        W1.f createAnimation3 = eVar.getEndPoint().createAnimation();
        this.f3893x = createAnimation3;
        createAnimation3.addUpdateListener(this);
        abstractC0642b.addAnimation(createAnimation3);
    }

    public final int[] a(int[] iArr) {
        u uVar = this.f3894y;
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
    @Override // V1.b, Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        super.addValueCallback(t6, c0949c);
        if (t6 == K.f3582z) {
            u uVar = this.f3894y;
            AbstractC0642b abstractC0642b = this.f3827f;
            if (uVar != null) {
                abstractC0642b.removeAnimation(uVar);
            }
            if (c0949c == null) {
                this.f3894y = null;
                return;
            }
            u uVar2 = new u(c0949c);
            this.f3894y = uVar2;
            uVar2.addUpdateListener(this);
            abstractC0642b.addAnimation(this.f3894y);
        }
    }

    public final int b() {
        float progress = this.f3892w.getProgress();
        int i2 = this.f3890u;
        int round = Math.round(progress * i2);
        int round2 = Math.round(this.f3893x.getProgress() * i2);
        int round3 = Math.round(this.f3891v.getProgress() * i2);
        int i7 = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i7 = i7 * 31 * round2;
        }
        return round3 != 0 ? i7 * 31 * round3 : i7;
    }

    @Override // V1.b, V1.f
    public void draw(Canvas canvas, Matrix matrix, int i2) {
        Shader shader;
        Shader radialGradient;
        if (this.f3885p) {
            return;
        }
        getBounds(this.f3888s, matrix, false);
        GradientType gradientType = GradientType.f9029b;
        GradientType gradientType2 = this.f3889t;
        W1.f fVar = this.f3891v;
        W1.f fVar2 = this.f3893x;
        W1.f fVar3 = this.f3892w;
        if (gradientType2 == gradientType) {
            long b7 = b();
            p.n nVar = this.f3886q;
            shader = (LinearGradient) nVar.get(b7);
            if (shader == null) {
                PointF pointF = (PointF) fVar3.getValue();
                PointF pointF2 = (PointF) fVar2.getValue();
                C0382c c0382c = (C0382c) fVar.getValue();
                radialGradient = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, a(c0382c.getColors()), c0382c.getPositions(), Shader.TileMode.CLAMP);
                nVar.put(b7, radialGradient);
                shader = radialGradient;
            }
            shader.setLocalMatrix(matrix);
            this.f3830i.setShader(shader);
            super.draw(canvas, matrix, i2);
        }
        long b8 = b();
        p.n nVar2 = this.f3887r;
        shader = (RadialGradient) nVar2.get(b8);
        if (shader == null) {
            PointF pointF3 = (PointF) fVar3.getValue();
            PointF pointF4 = (PointF) fVar2.getValue();
            C0382c c0382c2 = (C0382c) fVar.getValue();
            int[] a7 = a(c0382c2.getColors());
            float[] positions = c0382c2.getPositions();
            radialGradient = new RadialGradient(pointF3.x, pointF3.y, (float) Math.hypot(pointF4.x - r10, pointF4.y - r11), a7, positions, Shader.TileMode.CLAMP);
            nVar2.put(b8, radialGradient);
            shader = radialGradient;
        }
        shader.setLocalMatrix(matrix);
        this.f3830i.setShader(shader);
        super.draw(canvas, matrix, i2);
    }

    @Override // V1.d
    public String getName() {
        return this.f3884o;
    }
}
