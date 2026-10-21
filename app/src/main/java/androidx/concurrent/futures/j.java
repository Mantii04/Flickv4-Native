package androidx.concurrent.futures;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public Object f5218a;

    /* renamed from: b, reason: collision with root package name */
    public m f5219b;

    /* renamed from: c, reason: collision with root package name */
    public o f5220c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5221d;

    public void finalize() {
        o oVar;
        m mVar = this.f5219b;
        if (mVar != null && !mVar.isDone()) {
            mVar.f5224e.setException(new CallbackToFutureAdapter$FutureGarbageCollectedException("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f5218a));
        }
        if (this.f5221d || (oVar = this.f5220c) == null) {
            return;
        }
        oVar.set(null);
    }

    public boolean set(Object obj) {
        this.f5221d = true;
        m mVar = this.f5219b;
        boolean z6 = mVar != null && mVar.f5224e.set(obj);
        if (z6) {
            this.f5218a = null;
            this.f5219b = null;
            this.f5220c = null;
        }
        return z6;
    }

    public boolean setCancelled() {
        this.f5221d = true;
        m mVar = this.f5219b;
        boolean z6 = mVar != null && mVar.f5224e.cancel(true);
        if (z6) {
            this.f5218a = null;
            this.f5219b = null;
            this.f5220c = null;
        }
        return z6;
    }

    public boolean setException(Throwable th) {
        this.f5221d = true;
        m mVar = this.f5219b;
        boolean z6 = mVar != null && mVar.f5224e.setException(th);
        if (z6) {
            this.f5218a = null;
            this.f5219b = null;
            this.f5220c = null;
        }
        return z6;
    }
}
