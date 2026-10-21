package S5;

import A.i;
import R5.AbstractC0299t0;
import R5.U;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class c extends d {
    private volatile c _immediate;

    /* renamed from: f, reason: collision with root package name */
    public final Handler f3410f;

    /* renamed from: j, reason: collision with root package name */
    public final String f3411j;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f3412m;

    /* renamed from: n, reason: collision with root package name */
    public final c f3413n;

    public c(Handler handler, String str, boolean z6) {
        super(null);
        this.f3410f = handler;
        this.f3411j = str;
        this.f3412m = z6;
        this._immediate = z6 ? this : null;
        c cVar = this._immediate;
        if (cVar == null) {
            cVar = new c(handler, str, true);
            this._immediate = cVar;
        }
        this.f3413n = cVar;
    }

    @Override // R5.E
    public void dispatch(InterfaceC1952k interfaceC1952k, Runnable runnable) {
        if (this.f3410f.post(runnable)) {
            return;
        }
        AbstractC0299t0.cancel(interfaceC1952k, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        U.getIO().dispatch(interfaceC1952k, runnable);
    }

    public boolean equals(Object obj) {
        return (obj instanceof c) && ((c) obj).f3410f == this.f3410f;
    }

    public int hashCode() {
        return System.identityHashCode(this.f3410f);
    }

    @Override // R5.E
    public boolean isDispatchNeeded(InterfaceC1952k interfaceC1952k) {
        return (this.f3412m && j.areEqual(Looper.myLooper(), this.f3410f.getLooper())) ? false : true;
    }

    @Override // R5.E
    public String toString() {
        String stringInternalImpl = toStringInternalImpl();
        if (stringInternalImpl != null) {
            return stringInternalImpl;
        }
        String str = this.f3411j;
        if (str == null) {
            str = this.f3410f.toString();
        }
        return this.f3412m ? i.B(str, ".immediate") : str;
    }

    @Override // R5.E0
    public c getImmediate() {
        return this.f3413n;
    }

    public /* synthetic */ c(Handler handler, String str, int i2, g gVar) {
        this(handler, (i2 & 2) != 0 ? null : str);
    }

    public c(Handler handler, String str) {
        this(handler, str, false);
    }
}
