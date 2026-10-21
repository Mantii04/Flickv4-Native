package V1;

import T1.G;
import T1.K;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import b2.AbstractC0642b;
import g2.C0949c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class q implements f, n, k, W1.a, l {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f3924a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public final Path f3925b = new Path();

    /* renamed from: c, reason: collision with root package name */
    public final G f3926c;

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0642b f3927d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3928e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f3929f;

    /* renamed from: g, reason: collision with root package name */
    public final W1.f f3930g;

    /* renamed from: h, reason: collision with root package name */
    public final W1.f f3931h;

    /* renamed from: i, reason: collision with root package name */
    public final W1.t f3932i;

    /* renamed from: j, reason: collision with root package name */
    public e f3933j;

    public q(G g7, AbstractC0642b abstractC0642b, a2.j jVar) {
        this.f3926c = g7;
        this.f3927d = abstractC0642b;
        this.f3928e = jVar.getName();
        this.f3929f = jVar.isHidden();
        W1.f createAnimation = jVar.getCopies().createAnimation();
        this.f3930g = createAnimation;
        abstractC0642b.addAnimation(createAnimation);
        createAnimation.addUpdateListener(this);
        W1.f createAnimation2 = jVar.getOffset().createAnimation();
        this.f3931h = createAnimation2;
        abstractC0642b.addAnimation(createAnimation2);
        createAnimation2.addUpdateListener(this);
        W1.t createAnimation3 = jVar.getTransform().createAnimation();
        this.f3932i = createAnimation3;
        createAnimation3.addAnimationsToLayer(abstractC0642b);
        createAnimation3.addListener(this);
    }

    @Override // V1.k
    public void absorbContent(ListIterator<d> listIterator) {
        if (this.f3933j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f3933j = new e(this.f3926c, this.f3927d, "Repeater", this.f3929f, arrayList, null);
    }

    @Override // Y1.f
    public <T> void addValueCallback(T t6, C0949c c0949c) {
        if (this.f3932i.applyValueCallback(t6, c0949c)) {
            return;
        }
        if (t6 == K.f3569m) {
            this.f3930g.setValueCallback(c0949c);
        } else if (t6 == K.f3570n) {
            this.f3931h.setValueCallback(c0949c);
        }
    }

    @Override // V1.f
    public void draw(Canvas canvas, Matrix matrix, int i2) {
        float floatValue = ((Float) this.f3930g.getValue()).floatValue();
        float floatValue2 = ((Float) this.f3931h.getValue()).floatValue();
        W1.t tVar = this.f3932i;
        float floatValue3 = ((Float) tVar.getStartOpacity().getValue()).floatValue() / 100.0f;
        float floatValue4 = ((Float) tVar.getEndOpacity().getValue()).floatValue() / 100.0f;
        for (int i7 = ((int) floatValue) - 1; i7 >= 0; i7--) {
            Matrix matrix2 = this.f3924a;
            matrix2.set(matrix);
            float f3 = i7;
            matrix2.preConcat(tVar.getMatrixForRepeater(f3 + floatValue2));
            this.f3933j.draw(canvas, matrix2, (int) (f2.g.lerp(floatValue3, floatValue4, f3 / floatValue) * i2));
        }
    }

    @Override // V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        this.f3933j.getBounds(rectF, matrix, z6);
    }

    @Override // V1.d
    public String getName() {
        return this.f3928e;
    }

    @Override // V1.n
    public Path getPath() {
        Path path = this.f3933j.getPath();
        Path path2 = this.f3925b;
        path2.reset();
        float floatValue = ((Float) this.f3930g.getValue()).floatValue();
        float floatValue2 = ((Float) this.f3931h.getValue()).floatValue();
        for (int i2 = ((int) floatValue) - 1; i2 >= 0; i2--) {
            Matrix matrix = this.f3924a;
            matrix.set(this.f3932i.getMatrixForRepeater(i2 + floatValue2));
            path2.addPath(path, matrix);
        }
        return path2;
    }

    @Override // W1.a
    public void onValueChanged() {
        this.f3926c.invalidateSelf();
    }

    @Override // Y1.f
    public void resolveKeyPath(Y1.e eVar, int i2, List<Y1.e> list, Y1.e eVar2) {
        f2.g.resolveKeyPath(eVar, i2, list, eVar2, this);
    }

    @Override // V1.d
    public void setContents(List<d> list, List<d> list2) {
        this.f3933j.setContents(list, list2);
    }
}
