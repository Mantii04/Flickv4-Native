package androidx.activity;

import android.os.Bundle;
import androidx.lifecycle.Q;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements q1.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4866a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4867b;

    public /* synthetic */ f(Object obj, int i2) {
        this.f4866a = i2;
        this.f4867b = obj;
    }

    @Override // q1.f
    public final Bundle saveState() {
        switch (this.f4866a) {
            case 0:
                return ComponentActivity.b((ComponentActivity) this.f4867b);
            default:
                return Q.a((Q) this.f4867b);
        }
    }
}
