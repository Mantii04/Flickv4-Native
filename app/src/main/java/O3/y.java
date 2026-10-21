package O3;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.youtube.player.YouTubeInitializationResult;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class y {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2424a;

    /* renamed from: b, reason: collision with root package name */
    public final t f2425b;

    /* renamed from: c, reason: collision with root package name */
    public IInterface f2426c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f2427d;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f2430g;

    /* renamed from: i, reason: collision with root package name */
    public x f2432i;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f2428e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public boolean f2429f = false;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f2431h = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public boolean f2433j = false;

    public y(Context context, A a7, B b7) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Clients must be created on the UI thread.");
        }
        this.f2424a = (Context) AbstractC0203b.a(context);
        ArrayList arrayList = new ArrayList();
        this.f2427d = arrayList;
        arrayList.add(AbstractC0203b.a(a7));
        ArrayList arrayList2 = new ArrayList();
        this.f2430g = arrayList2;
        arrayList2.add(AbstractC0203b.a(b7));
        this.f2425b = new t(this);
    }

    public abstract IInterface a(IBinder iBinder);

    public abstract void a(l lVar, w wVar) throws RemoteException;

    public final void a(YouTubeInitializationResult youTubeInitializationResult) {
        this.f2425b.removeMessages(4);
        synchronized (this.f2430g) {
            try {
                ArrayList arrayList = this.f2430g;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size && this.f2433j; i2++) {
                    if (this.f2430g.contains(arrayList.get(i2))) {
                        ((N3.h) ((B) arrayList.get(i2))).a(youTubeInitializationResult);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract String b();

    public final void b(IBinder iBinder) {
        try {
            a(k.a(iBinder), new w(this));
        } catch (RemoteException unused) {
            Log.w("YouTubeClient", "service died");
        }
    }

    public abstract String c();

    public void d() {
        h();
        this.f2433j = false;
        synchronized (this.f2431h) {
            try {
                int size = this.f2431h.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((u) this.f2431h.get(i2)).b();
                }
                this.f2431h.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        k();
    }

    public final void e() {
        Message obtainMessage;
        this.f2433j = true;
        Context context = this.f2424a;
        YouTubeInitializationResult isYouTubeApiServiceAvailable = N3.a.isYouTubeApiServiceAvailable(context);
        YouTubeInitializationResult youTubeInitializationResult = YouTubeInitializationResult.f12991b;
        t tVar = this.f2425b;
        if (isYouTubeApiServiceAvailable != youTubeInitializationResult) {
            obtainMessage = tVar.obtainMessage(3, isYouTubeApiServiceAvailable);
        } else {
            Intent intent = new Intent(c()).setPackage(J.a(context));
            if (this.f2432i != null) {
                Log.e("YouTubeClient", "Calling connect() while still connected, missing disconnect().");
                k();
            }
            x xVar = new x(this);
            this.f2432i = xVar;
            if (context.bindService(intent, xVar, 129)) {
                return;
            } else {
                obtainMessage = tVar.obtainMessage(3, YouTubeInitializationResult.f12998q);
            }
        }
        tVar.sendMessage(obtainMessage);
    }

    public final boolean f() {
        return this.f2426c != null;
    }

    public final void g() {
        synchronized (this.f2427d) {
            try {
                boolean z6 = true;
                AbstractC0203b.a(!this.f2429f);
                this.f2425b.removeMessages(4);
                this.f2429f = true;
                if (this.f2428e.size() != 0) {
                    z6 = false;
                }
                AbstractC0203b.a(z6);
                ArrayList arrayList = this.f2427d;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size && this.f2433j && f(); i2++) {
                    if (!this.f2428e.contains(arrayList.get(i2))) {
                        ((N3.g) ((A) arrayList.get(i2))).a();
                    }
                }
                this.f2428e.clear();
                this.f2429f = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        this.f2425b.removeMessages(4);
        synchronized (this.f2427d) {
            try {
                this.f2429f = true;
                ArrayList arrayList = this.f2427d;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size && this.f2433j; i2++) {
                    if (this.f2427d.contains(arrayList.get(i2))) {
                        ((N3.g) ((A) arrayList.get(i2))).b();
                    }
                }
                this.f2429f = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i() {
        if (!f()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final IInterface j() {
        i();
        return this.f2426c;
    }

    public final void k() {
        x xVar = this.f2432i;
        if (xVar != null) {
            try {
                this.f2424a.unbindService(xVar);
            } catch (IllegalArgumentException e3) {
                Log.w("YouTubeClient", "Unexpected error from unbindService()", e3);
            }
        }
        this.f2426c = null;
        this.f2432i = null;
    }
}
