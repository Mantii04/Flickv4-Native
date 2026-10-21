package b2;

import T1.G;
import a2.m;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import java.util.Collections;
import java.util.List;

/* renamed from: b2.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0647g extends AbstractC0642b {

    /* renamed from: x, reason: collision with root package name */
    public final V1.e f8447x;

    public C0647g(G g7, C0645e c0645e) {
        super(g7, c0645e);
        V1.e eVar = new V1.e(g7, this, new m("__container", c0645e.f8425a, false));
        this.f8447x = eVar;
        List<V1.d> list = Collections.EMPTY_LIST;
        eVar.setContents(list, list);
    }

    @Override // b2.AbstractC0642b
    public final void drawLayer(Canvas canvas, Matrix matrix, int i2) {
        this.f8447x.draw(canvas, matrix, i2);
    }

    @Override // b2.AbstractC0642b, V1.f
    public void getBounds(RectF rectF, Matrix matrix, boolean z6) {
        super.getBounds(rectF, matrix, z6);
        this.f8447x.getBounds(rectF, this.f8405m, z6);
    }

    @Override // b2.AbstractC0642b
    public void resolveChildKeyPath(Y1.e eVar, int i2, List<Y1.e> list, Y1.e eVar2) {
        this.f8447x.resolveKeyPath(eVar, i2, list, eVar2);
    }
}
