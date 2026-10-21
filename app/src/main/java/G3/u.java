package G3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;

/* loaded from: classes2.dex */
public final class u extends z {

    /* renamed from: c, reason: collision with root package name */
    public final w f1156c;

    public u(w wVar) {
        this.f1156c = wVar;
    }

    @Override // G3.z
    public void draw(Matrix matrix, F3.a aVar, int i2, Canvas canvas) {
        w wVar = this.f1156c;
        aVar.drawCornerShadow(canvas, matrix, new RectF(wVar.f1161b, wVar.f1162c, wVar.f1163d, wVar.f1164e), i2, wVar.f1165f, wVar.f1166g);
    }
}
