package io.hopmonsdk;

import io.hopmonsdk.Hopmn;

/* loaded from: classes2.dex */
public final class a implements Hopmn.ConsentCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Hopmn.ConsentCallback f16789a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Hopmn f16790b;

    public a(Hopmn hopmn, Hopmn.ConsentCallback consentCallback) {
        this.f16790b = hopmn;
        this.f16789a = consentCallback;
    }

    @Override // io.hopmonsdk.Hopmn.ConsentCallback
    public void onAgreed() {
        this.f16790b.start();
        Hopmn.ConsentCallback consentCallback = this.f16789a;
        if (consentCallback != null) {
            consentCallback.onAgreed();
        }
    }

    @Override // io.hopmonsdk.Hopmn.ConsentCallback
    public void onDeclined() {
        this.f16790b.stop();
        Hopmn.ConsentCallback consentCallback = this.f16789a;
        if (consentCallback != null) {
            consentCallback.onDeclined();
        }
    }
}
