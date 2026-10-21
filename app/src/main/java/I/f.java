package I;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1219a;

    /* renamed from: b, reason: collision with root package name */
    public e f1220b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1221c;

    public void cancel() {
        synchronized (this) {
            try {
                if (this.f1219a) {
                    return;
                }
                this.f1219a = true;
                this.f1221c = true;
                e eVar = this.f1220b;
                if (eVar != null) {
                    try {
                        eVar.onCancel();
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.f1221c = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                synchronized (this) {
                    this.f1221c = false;
                    notifyAll();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setOnCancelListener(e eVar) {
        synchronized (this) {
            while (this.f1221c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } finally {
                }
            }
            if (this.f1220b == eVar) {
                return;
            }
            this.f1220b = eVar;
            if (this.f1219a && eVar != null) {
                eVar.onCancel();
            }
        }
    }
}
