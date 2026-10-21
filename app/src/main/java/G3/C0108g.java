package G3;

import android.graphics.Matrix;
import java.util.ArrayList;
import java.util.BitSet;

/* renamed from: G3.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0108g implements r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f1073a;

    public C0108g(j jVar) {
        this.f1073a = jVar;
    }

    public void onCornerPathCreated(A a7, Matrix matrix, int i2) {
        j jVar = this.f1073a;
        BitSet bitSet = jVar.f1101j;
        a7.getClass();
        bitSet.set(i2, false);
        a7.a(a7.f1057f);
        jVar.f1099e[i2] = new t(new ArrayList(a7.f1059h), new Matrix(matrix));
    }

    public void onEdgePathCreated(A a7, Matrix matrix, int i2) {
        j jVar = this.f1073a;
        a7.getClass();
        jVar.f1101j.set(i2 + 4, false);
        a7.a(a7.f1057f);
        jVar.f1100f[i2] = new t(new ArrayList(a7.f1059h), new Matrix(matrix));
    }
}
