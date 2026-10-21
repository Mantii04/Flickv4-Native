package com.google.firebase.installations;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13287b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FirebaseInstallations f13288e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f13289f;

    public /* synthetic */ a(FirebaseInstallations firebaseInstallations, boolean z6, int i2) {
        this.f13287b = i2;
        this.f13288e = firebaseInstallations;
        this.f13289f = z6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13287b) {
            case 0:
                this.f13288e.lambda$doRegistrationOrRefresh$3(this.f13289f);
                break;
            default:
                this.f13288e.lambda$getToken$2(this.f13289f);
                break;
        }
    }
}
