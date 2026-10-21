package f1;

import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public final class u0 extends O {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v0 f14315a;

    public u0(v0 v0Var) {
        this.f14315a = v0Var;
    }

    @Override // f1.O
    public void onError(String str, Bundle bundle) {
        Log.d("MediaRouteProviderProxy", "Error: " + str + ", data: " + bundle);
    }

    @Override // f1.O
    public void onResult(Bundle bundle) {
        String string = bundle.getString("groupableTitle");
        v0 v0Var = this.f14315a;
        v0Var.f14318g = string;
        v0Var.f14319h = bundle.getString("transferableTitle");
    }
}
