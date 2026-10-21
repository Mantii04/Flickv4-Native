package flix.com.vision.processors.english;

import S2.E;
import a3.InterfaceC0386d;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.Objects;

/* loaded from: classes2.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16095b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f16096e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f16097f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f16098j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ int f16099m;

    public /* synthetic */ i(Z2.m mVar, E e3, int i2, Runnable runnable) {
        this.f16095b = 2;
        this.f16096e = mVar;
        this.f16097f = e3;
        this.f16099m = i2;
        this.f16098j = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16095b) {
            case 0:
                ((m) this.f16096e).d(this.f16099m + 1, (String) this.f16097f, (String) this.f16098j);
                return;
            case 1:
                ((m) this.f16096e).a(this.f16099m + 1, (String) this.f16097f, (String) this.f16098j);
                return;
            default:
                E e3 = (E) this.f16097f;
                int i2 = this.f16099m;
                Runnable runnable = (Runnable) this.f16098j;
                Z2.m mVar = (Z2.m) this.f16096e;
                b3.b bVar = mVar.f4498f;
                try {
                    try {
                        InterfaceC0386d interfaceC0386d = mVar.f4495c;
                        Objects.requireNonNull(interfaceC0386d);
                        ((a3.r) bVar).runCriticalSection(new A0.a(interfaceC0386d, 15));
                        NetworkInfo activeNetworkInfo = ((ConnectivityManager) mVar.f4493a.getSystemService("connectivity")).getActiveNetworkInfo();
                        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                            ((a3.r) bVar).runCriticalSection(new Z2.j(mVar, e3, i2, 0));
                        } else {
                            mVar.logAndUpdateState(e3, i2);
                        }
                    } catch (SynchronizationException unused) {
                        ((Z2.d) mVar.f4496d).schedule(e3, i2 + 1);
                    }
                    runnable.run();
                    return;
                } catch (Throwable th) {
                    runnable.run();
                    throw th;
                }
        }
    }

    public /* synthetic */ i(m mVar, String str, String str2, int i2, int i7) {
        this.f16095b = i7;
        this.f16096e = mVar;
        this.f16097f = str;
        this.f16098j = str2;
        this.f16099m = i2;
    }
}
