package V3;

import java.util.concurrent.ExecutionException;

/* loaded from: classes2.dex */
public final class y implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final F f4020b;

    /* renamed from: e, reason: collision with root package name */
    public final x f4021e;

    public y(F f3, x xVar) {
        this.f4020b = f3;
        this.f4021e = xVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public void run() {
        Throwable tryInternalFastPathGetFailure;
        F f3 = this.f4020b;
        boolean z6 = f3 instanceof W3.a;
        x xVar = this.f4021e;
        if (z6 && (tryInternalFastPathGetFailure = W3.b.tryInternalFastPathGetFailure((W3.a) f3)) != null) {
            xVar.onFailure(tryInternalFastPathGetFailure);
            return;
        }
        try {
            xVar.onSuccess(A.getDone(f3));
        } catch (ExecutionException e3) {
            xVar.onFailure(e3.getCause());
        } catch (Throwable th) {
            xVar.onFailure(th);
        }
    }

    public String toString() {
        return P3.t.toStringHelper(this).addValue(this.f4021e).toString();
    }
}
