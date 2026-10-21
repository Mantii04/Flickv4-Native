package O3;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.KeyEvent;
import android.view.View;

/* loaded from: classes2.dex */
public final class z implements N3.f {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0205d f2434a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0210i f2435b;

    public z(InterfaceC0205d interfaceC0205d, InterfaceC0210i interfaceC0210i) {
        this.f2434a = (InterfaceC0205d) AbstractC0203b.a(interfaceC0205d, "connectionClient cannot be null");
        this.f2435b = (InterfaceC0210i) AbstractC0203b.a(interfaceC0210i, "embeddedPlayer cannot be null");
    }

    public final View a() {
        try {
            return (View) F.a(((C0208g) this.f2435b).s());
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final void b() {
        try {
            ((C0208g) this.f2435b).m();
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final void c() {
        try {
            ((C0208g) this.f2435b).n();
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final void d() {
        try {
            ((C0208g) this.f2435b).o();
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final void e() {
        try {
            ((C0208g) this.f2435b).p();
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final void f() {
        try {
            ((C0208g) this.f2435b).q();
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final void g() {
        try {
            ((C0208g) this.f2435b).l();
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final Bundle h() {
        try {
            return ((C0208g) this.f2435b).r();
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final void loadVideo(String str) {
        loadVideo(str, 0);
    }

    public final void setFullscreen(boolean z6) {
        try {
            ((C0208g) this.f2435b).b(z6);
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final void a(Configuration configuration) {
        try {
            ((C0208g) this.f2435b).a(configuration);
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final void b(boolean z6) {
        try {
            ((C0208g) this.f2435b).e(z6);
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final void loadVideo(String str, int i2) {
        try {
            ((C0208g) this.f2435b).b(str, i2);
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final void a(boolean z6) {
        InterfaceC0205d interfaceC0205d = this.f2434a;
        try {
            ((C0208g) this.f2435b).a(z6);
            ((r) interfaceC0205d).a(z6);
            ((r) interfaceC0205d).d();
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final boolean b(int i2, KeyEvent keyEvent) {
        try {
            return ((C0208g) this.f2435b).b(i2, keyEvent);
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final boolean a(int i2, KeyEvent keyEvent) {
        try {
            return ((C0208g) this.f2435b).a(i2, keyEvent);
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }

    public final boolean a(Bundle bundle) {
        try {
            return ((C0208g) this.f2435b).a(bundle);
        } catch (RemoteException e3) {
            throw new com.google.android.youtube.player.internal.q(e3);
        }
    }
}
