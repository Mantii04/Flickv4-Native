package R5;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public final class y0 implements InterfaceC0282k0 {

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f3201e = AtomicIntegerFieldUpdater.newUpdater(y0.class, "_isCompleting");

    /* renamed from: f, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3202f = AtomicReferenceFieldUpdater.newUpdater(y0.class, Object.class, "_rootCause");

    /* renamed from: j, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f3203j = AtomicReferenceFieldUpdater.newUpdater(y0.class, Object.class, "_exceptionsHolder");
    private volatile Object _exceptionsHolder;
    private volatile int _isCompleting;
    private volatile Object _rootCause;

    /* renamed from: b, reason: collision with root package name */
    public final F0 f3204b;

    public y0(F0 f02, boolean z6, Throwable th) {
        this.f3204b = f02;
        this._isCompleting = z6 ? 1 : 0;
        this._rootCause = th;
    }

    public final void addExceptionLocked(Throwable th) {
        Throwable rootCause = getRootCause();
        if (rootCause == null) {
            setRootCause(th);
            return;
        }
        if (th == rootCause) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3203j;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            atomicReferenceFieldUpdater.set(this, th);
            return;
        }
        if (!(obj instanceof Throwable)) {
            if (obj instanceof ArrayList) {
                ((ArrayList) obj).add(th);
                return;
            } else {
                throw new IllegalStateException(("State is " + obj).toString());
            }
        }
        if (th == obj) {
            return;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(th);
        atomicReferenceFieldUpdater.set(this, arrayList);
    }

    @Override // R5.InterfaceC0282k0
    public F0 getList() {
        return this.f3204b;
    }

    public final Throwable getRootCause() {
        return (Throwable) f3202f.get(this);
    }

    @Override // R5.InterfaceC0282k0
    public boolean isActive() {
        return getRootCause() == null;
    }

    public final boolean isCancelling() {
        return getRootCause() != null;
    }

    public final boolean isCompleting() {
        return f3201e.get(this) != 0;
    }

    public final boolean isSealed() {
        W5.G g7;
        Object obj = f3203j.get(this);
        g7 = B0.f3140e;
        return obj == g7;
    }

    public final List<Throwable> sealLocked(Throwable th) {
        ArrayList arrayList;
        W5.G g7;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f3203j;
        Object obj = atomicReferenceFieldUpdater.get(this);
        if (obj == null) {
            arrayList = new ArrayList(4);
        } else if (obj instanceof Throwable) {
            ArrayList arrayList2 = new ArrayList(4);
            arrayList2.add(obj);
            arrayList = arrayList2;
        } else {
            if (!(obj instanceof ArrayList)) {
                throw new IllegalStateException(("State is " + obj).toString());
            }
            arrayList = (ArrayList) obj;
        }
        Throwable rootCause = getRootCause();
        if (rootCause != null) {
            arrayList.add(0, rootCause);
        }
        if (th != null && !kotlin.jvm.internal.j.areEqual(th, rootCause)) {
            arrayList.add(th);
        }
        g7 = B0.f3140e;
        atomicReferenceFieldUpdater.set(this, g7);
        return arrayList;
    }

    public final void setCompleting(boolean z6) {
        f3201e.set(this, z6 ? 1 : 0);
    }

    public final void setRootCause(Throwable th) {
        f3202f.set(this, th);
    }

    public String toString() {
        return "Finishing[cancelling=" + isCancelling() + ", completing=" + isCompleting() + ", rootCause=" + getRootCause() + ", exceptions=" + f3203j.get(this) + ", list=" + getList() + ']';
    }
}
