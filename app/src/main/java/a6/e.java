package a6;

import W5.D;
import W5.G;
import java.util.concurrent.atomic.AtomicReferenceArray;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class e extends D {

    /* renamed from: m, reason: collision with root package name */
    public final AtomicReferenceArray f4833m;

    public e(long j7, e eVar, int i2) {
        super(j7, eVar, i2);
        int i7;
        i7 = d.f4832f;
        this.f4833m = new AtomicReferenceArray(i7);
    }

    public final AtomicReferenceArray getAcquirers() {
        return this.f4833m;
    }

    @Override // W5.D
    public int getNumberOfSlots() {
        int i2;
        i2 = d.f4832f;
        return i2;
    }

    @Override // W5.D
    public void onCancellation(int i2, Throwable th, InterfaceC1952k interfaceC1952k) {
        G g7;
        g7 = d.f4831e;
        getAcquirers().set(i2, g7);
        onSlotCleaned();
    }

    public String toString() {
        return "SemaphoreSegment[id=" + this.f4177f + ", hashCode=" + hashCode() + ']';
    }
}
