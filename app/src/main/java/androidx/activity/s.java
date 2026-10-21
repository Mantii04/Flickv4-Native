package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class s {

    /* renamed from: a, reason: collision with root package name */
    public boolean f4921a;

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f4922b = new CopyOnWriteArrayList();

    /* renamed from: c, reason: collision with root package name */
    public H5.a f4923c;

    public s(boolean z6) {
        this.f4921a = z6;
    }

    public final void addCancellable(d cancellable) {
        kotlin.jvm.internal.j.checkNotNullParameter(cancellable, "cancellable");
        this.f4922b.add(cancellable);
    }

    public final H5.a getEnabledChangedCallback$activity_release() {
        return this.f4923c;
    }

    public void handleOnBackCancelled() {
    }

    public abstract void handleOnBackPressed();

    public void handleOnBackProgressed(c backEvent) {
        kotlin.jvm.internal.j.checkNotNullParameter(backEvent, "backEvent");
    }

    public void handleOnBackStarted(c backEvent) {
        kotlin.jvm.internal.j.checkNotNullParameter(backEvent, "backEvent");
    }

    public final boolean isEnabled() {
        return this.f4921a;
    }

    public final void remove() {
        Iterator it = this.f4922b.iterator();
        while (it.hasNext()) {
            ((d) it.next()).cancel();
        }
    }

    public final void removeCancellable(d cancellable) {
        kotlin.jvm.internal.j.checkNotNullParameter(cancellable, "cancellable");
        this.f4922b.remove(cancellable);
    }

    public final void setEnabled(boolean z6) {
        this.f4921a = z6;
        H5.a aVar = this.f4923c;
        if (aVar != null) {
            aVar.invoke();
        }
    }

    public final void setEnabledChangedCallback$activity_release(H5.a aVar) {
        this.f4923c = aVar;
    }
}
