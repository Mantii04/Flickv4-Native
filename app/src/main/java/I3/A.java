package I3;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.loopj.android.http.AsyncHttpClient;

/* loaded from: classes2.dex */
public final class A {

    /* renamed from: e, reason: collision with root package name */
    public static A f1315e;

    /* renamed from: a, reason: collision with root package name */
    public final Object f1316a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final Handler f1317b = new Handler(Looper.getMainLooper(), new x(this));

    /* renamed from: c, reason: collision with root package name */
    public z f1318c;

    /* renamed from: d, reason: collision with root package name */
    public z f1319d;

    public static A b() {
        if (f1315e == null) {
            f1315e = new A();
        }
        return f1315e;
    }

    public final boolean a(z zVar, int i2) {
        y yVar = (y) zVar.f1378a.get();
        if (yVar == null) {
            return false;
        }
        this.f1317b.removeCallbacksAndMessages(zVar);
        ((l) yVar).dismiss(i2);
        return true;
    }

    public final boolean c(y yVar) {
        z zVar = this.f1318c;
        return (zVar == null || yVar == null || zVar.f1378a.get() != yVar) ? false : true;
    }

    public final void d(z zVar) {
        int i2 = zVar.f1379b;
        if (i2 == -2) {
            return;
        }
        if (i2 <= 0) {
            i2 = i2 == -1 ? AsyncHttpClient.DEFAULT_RETRY_SLEEP_TIME_MILLIS : 2750;
        }
        Handler handler = this.f1317b;
        handler.removeCallbacksAndMessages(zVar);
        handler.sendMessageDelayed(Message.obtain(handler, 0, zVar), i2);
    }

    public void dismiss(y yVar, int i2) {
        synchronized (this.f1316a) {
            try {
                if (c(yVar)) {
                    a(this.f1318c, i2);
                } else {
                    z zVar = this.f1319d;
                    if ((zVar == null || yVar == null || zVar.f1378a.get() != yVar) ? false : true) {
                        a(this.f1319d, i2);
                    }
                }
            } finally {
            }
        }
    }

    public boolean isCurrentOrNext(y yVar) {
        boolean z6;
        synchronized (this.f1316a) {
            z6 = true;
            if (!c(yVar)) {
                z zVar = this.f1319d;
                if (!((zVar == null || yVar == null || zVar.f1378a.get() != yVar) ? false : true)) {
                    z6 = false;
                }
            }
        }
        return z6;
    }

    public void onDismissed(y yVar) {
        synchronized (this.f1316a) {
            try {
                if (c(yVar)) {
                    this.f1318c = null;
                    z zVar = this.f1319d;
                    if (zVar != null && zVar != null) {
                        this.f1318c = zVar;
                        this.f1319d = null;
                        y yVar2 = (y) zVar.f1378a.get();
                        if (yVar2 != null) {
                            ((l) yVar2).show();
                        } else {
                            this.f1318c = null;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onShown(y yVar) {
        synchronized (this.f1316a) {
            try {
                if (c(yVar)) {
                    d(this.f1318c);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void pauseTimeout(y yVar) {
        synchronized (this.f1316a) {
            try {
                if (c(yVar)) {
                    z zVar = this.f1318c;
                    if (!zVar.f1380c) {
                        zVar.f1380c = true;
                        this.f1317b.removeCallbacksAndMessages(zVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void restoreTimeoutIfPaused(y yVar) {
        synchronized (this.f1316a) {
            try {
                if (c(yVar)) {
                    z zVar = this.f1318c;
                    if (zVar.f1380c) {
                        zVar.f1380c = false;
                        d(zVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void show(int i2, y yVar) {
        synchronized (this.f1316a) {
            try {
                if (c(yVar)) {
                    z zVar = this.f1318c;
                    zVar.f1379b = i2;
                    this.f1317b.removeCallbacksAndMessages(zVar);
                    d(this.f1318c);
                    return;
                }
                z zVar2 = this.f1319d;
                if ((zVar2 == null || yVar == null || zVar2.f1378a.get() != yVar) ? false : true) {
                    this.f1319d.f1379b = i2;
                } else {
                    this.f1319d = new z(i2, yVar);
                }
                z zVar3 = this.f1318c;
                if (zVar3 == null || !a(zVar3, 4)) {
                    this.f1318c = null;
                    z zVar4 = this.f1319d;
                    if (zVar4 != null) {
                        this.f1318c = zVar4;
                        this.f1319d = null;
                        y yVar2 = (y) zVar4.f1378a.get();
                        if (yVar2 != null) {
                            ((l) yVar2).show();
                        } else {
                            this.f1318c = null;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
