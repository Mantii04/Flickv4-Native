package p5;

import android.os.Binder;
import io.hopmonsdk.service.MoneytiserService;

/* renamed from: p5.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class BinderC1505d extends Binder {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MoneytiserService f19509a;

    public BinderC1505d(MoneytiserService moneytiserService) {
        this.f19509a = moneytiserService;
    }

    public MoneytiserService getService() {
        return this.f19509a;
    }
}
