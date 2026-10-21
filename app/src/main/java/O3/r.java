package O3;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class r extends y implements InterfaceC0205d {

    /* renamed from: k, reason: collision with root package name */
    public final String f2412k;

    /* renamed from: l, reason: collision with root package name */
    public final String f2413l;

    /* renamed from: m, reason: collision with root package name */
    public final String f2414m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f2415n;

    public r(Context context, String str, String str2, String str3, A a7, B b7) {
        super(context, a7, b7);
        this.f2412k = (String) AbstractC0203b.a(str);
        this.f2413l = AbstractC0203b.a(str2, (Object) "callingPackage cannot be null or empty");
        this.f2414m = AbstractC0203b.a(str3, (Object) "callingAppVersion cannot be null or empty");
    }

    public final IBinder a() {
        i();
        if (this.f2415n) {
            throw new IllegalStateException("Connection client has been released");
        }
        try {
            return ((m) ((o) j())).a();
        } catch (RemoteException e3) {
            throw new IllegalStateException(e3);
        }
    }

    @Override // O3.y
    public final String b() {
        return "com.google.android.youtube.player.internal.IYouTubeService";
    }

    @Override // O3.y
    public final String c() {
        return "com.google.android.youtube.api.service.START";
    }

    @Override // O3.y
    public final void d() {
        if (!this.f2415n) {
            a(true);
        }
        super.d();
    }

    @Override // O3.y
    public final /* synthetic */ IInterface a(IBinder iBinder) {
        return n.a(iBinder);
    }

    @Override // O3.y
    public final void a(l lVar, w wVar) throws RemoteException {
        ((C0211j) lVar).a(wVar, 1202, this.f2413l, this.f2414m, this.f2412k, null);
    }

    public final void a(boolean z6) {
        if (f()) {
            try {
                ((m) ((o) j())).a(z6);
            } catch (RemoteException unused) {
            }
            this.f2415n = true;
        }
    }
}
