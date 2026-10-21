package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;

/* loaded from: classes.dex */
public final class i implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4872b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ IntentSender.SendIntentException f4873e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ j f4874f;

    public i(j jVar, int i2, IntentSender.SendIntentException sendIntentException) {
        this.f4874f = jVar;
        this.f4872b = i2;
        this.f4873e = sendIntentException;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4874f.dispatchResult(this.f4872b, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.f4873e));
    }
}
