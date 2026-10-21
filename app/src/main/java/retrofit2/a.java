package retrofit2;

import retrofit2.DefaultCallAdapterFactory;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f19892b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DefaultCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1 f19893e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Callback f19894f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f19895j;

    public /* synthetic */ a(DefaultCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1 anonymousClass1, Callback callback, Object obj, int i2) {
        this.f19892b = i2;
        this.f19893e = anonymousClass1;
        this.f19894f = callback;
        this.f19895j = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19892b) {
            case 0:
                this.f19893e.lambda$onResponse$0(this.f19894f, (Response) this.f19895j);
                break;
            default:
                this.f19893e.lambda$onFailure$1(this.f19894f, (Throwable) this.f19895j);
                break;
        }
    }
}
