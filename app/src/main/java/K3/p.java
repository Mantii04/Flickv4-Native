package K3;

import android.util.SparseArray;
import com.google.android.material.R;
import l.e2;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f1698a = new SparseArray();

    /* renamed from: b, reason: collision with root package name */
    public final q f1699b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1700c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1701d;

    public p(q qVar, e2 e2Var) {
        this.f1699b = qVar;
        this.f1700c = e2Var.getResourceId(R.styleable.TextInputLayout_endIconDrawable, 0);
        this.f1701d = e2Var.getResourceId(R.styleable.TextInputLayout_passwordToggleDrawable, 0);
    }
}
