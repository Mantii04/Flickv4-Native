package f1;

import android.os.Bundle;

/* renamed from: f1.l0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0906l0 {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f14268a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14269b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f14270c;

    /* renamed from: d, reason: collision with root package name */
    public final Bundle f14271d = Bundle.EMPTY;

    public C0906l0(C0904k0 c0904k0) {
        this.f14268a = c0904k0.f14264a;
        this.f14269b = c0904k0.f14265b;
        this.f14270c = c0904k0.f14266c;
    }

    public int getDialogType() {
        return 1;
    }

    public Bundle getExtras() {
        return this.f14271d;
    }

    public boolean isMediaTransferReceiverEnabled() {
        return this.f14268a;
    }

    public boolean isOutputSwitcherEnabled() {
        return this.f14269b;
    }

    public boolean isTransferToLocalEnabled() {
        return this.f14270c;
    }
}
