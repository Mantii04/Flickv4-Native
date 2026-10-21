package G3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class t extends z {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1154c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Matrix f1155d;

    public t(ArrayList arrayList, Matrix matrix) {
        this.f1154c = arrayList;
        this.f1155d = matrix;
    }

    @Override // G3.z
    public void draw(Matrix matrix, F3.a aVar, int i2, Canvas canvas) {
        Iterator it = this.f1154c.iterator();
        while (it.hasNext()) {
            ((z) it.next()).draw(this.f1155d, aVar, i2, canvas);
        }
    }
}
