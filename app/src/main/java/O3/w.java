package O3;

import android.os.IBinder;

/* loaded from: classes2.dex */
public final class w extends AbstractBinderC0206e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f2422a;

    public w(y yVar) {
        this.f2422a = yVar;
    }

    public final void a(String str, IBinder iBinder) {
        y yVar = this.f2422a;
        t tVar = yVar.f2425b;
        tVar.sendMessage(tVar.obtainMessage(1, new v(yVar, str, iBinder)));
    }
}
