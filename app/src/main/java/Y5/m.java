package Y5;

import R5.K;

/* loaded from: classes2.dex */
public final class m extends j {

    /* renamed from: f, reason: collision with root package name */
    public final Runnable f4426f;

    public m(Runnable runnable, long j7, k kVar) {
        super(j7, kVar);
        this.f4426f = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4426f.run();
        } finally {
            ((l) this.f4424e).afterTask();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f4426f;
        sb.append(K.getClassSimpleName(runnable));
        sb.append('@');
        sb.append(K.getHexAddress(runnable));
        sb.append(", ");
        sb.append(this.f4423b);
        sb.append(", ");
        sb.append(this.f4424e);
        sb.append(']');
        return sb.toString();
    }
}
