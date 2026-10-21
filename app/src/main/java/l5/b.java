package l5;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import o5.InterfaceC1472d;

/* loaded from: classes2.dex */
public final class b implements InterfaceC1472d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f18155a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CountDownLatch f18156b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f18157c;

    public b(AtomicReference atomicReference, CountDownLatch countDownLatch, AtomicReference atomicReference2) {
        this.f18155a = atomicReference;
        this.f18156b = countDownLatch;
        this.f18157c = atomicReference2;
    }

    @Override // o5.InterfaceC1472d
    public void onFailure(String str) {
        this.f18157c.set(str);
        this.f18156b.countDown();
    }

    @Override // o5.InterfaceC1472d
    public void onSuccess(String str) {
        this.f18155a.set(str);
        this.f18156b.countDown();
    }
}
