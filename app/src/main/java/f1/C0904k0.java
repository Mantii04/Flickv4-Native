package f1;

import android.os.Build;

/* renamed from: f1.k0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0904k0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14264a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14265b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14266c;

    public C0904k0() {
        this.f14264a = Build.VERSION.SDK_INT >= 30;
    }

    public C0906l0 build() {
        return new C0906l0(this);
    }

    public C0904k0 setMediaTransferReceiverEnabled(boolean z6) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f14264a = z6;
        }
        return this;
    }

    public C0904k0 setOutputSwitcherEnabled(boolean z6) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f14265b = z6;
        }
        return this;
    }

    public C0904k0 setTransferToLocalEnabled(boolean z6) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f14266c = z6;
        }
        return this;
    }
}
