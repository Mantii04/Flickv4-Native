package l;

/* loaded from: classes.dex */
public final class V0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ W0 f17785b;

    public V0(W0 w02) {
        this.f17785b = w02;
    }

    public void cancel() {
        W0 w02 = this.f17785b;
        w02.f17803u = null;
        w02.removeCallbacks(this);
    }

    public void post() {
        this.f17785b.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        W0 w02 = this.f17785b;
        w02.f17803u = null;
        w02.drawableStateChanged();
    }
}
