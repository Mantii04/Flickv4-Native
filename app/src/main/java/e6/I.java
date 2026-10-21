package e6;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public abstract class I {

    /* renamed from: a, reason: collision with root package name */
    public static final H f13998a = new H(new byte[0], 0, 0, false, false);

    /* renamed from: b, reason: collision with root package name */
    public static final int f13999b;

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReference[] f14000c;

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f13999b = highestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i2 = 0; i2 < highestOneBit; i2++) {
            atomicReferenceArr[i2] = new AtomicReference();
        }
        f14000c = atomicReferenceArr;
    }

    public static final void recycle(H segment) {
        kotlin.jvm.internal.j.checkNotNullParameter(segment, "segment");
        if (segment.f13996f != null || segment.f13997g != null) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (segment.f13994d) {
            return;
        }
        AtomicReference atomicReference = f14000c[(int) (Thread.currentThread().getId() & (f13999b - 1))];
        H h7 = f13998a;
        H h8 = (H) atomicReference.getAndSet(h7);
        if (h8 == h7) {
            return;
        }
        int i2 = h8 != null ? h8.f13993c : 0;
        if (i2 >= 65536) {
            atomicReference.set(h8);
            return;
        }
        segment.f13996f = h8;
        segment.f13992b = 0;
        segment.f13993c = i2 + 8192;
        atomicReference.set(segment);
    }

    public static final H take() {
        AtomicReference atomicReference = f14000c[(int) (Thread.currentThread().getId() & (f13999b - 1))];
        H h7 = f13998a;
        H h8 = (H) atomicReference.getAndSet(h7);
        if (h8 == h7) {
            return new H();
        }
        if (h8 == null) {
            atomicReference.set(null);
            return new H();
        }
        atomicReference.set(h8.f13996f);
        h8.f13996f = null;
        h8.f13993c = 0;
        return h8;
    }
}
