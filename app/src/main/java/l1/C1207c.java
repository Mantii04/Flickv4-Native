package l1;

import androidx.profileinstaller.ProfileInstallReceiver;

/* renamed from: l1.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1207c implements InterfaceC1210f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ProfileInstallReceiver f18093a;

    public C1207c(ProfileInstallReceiver profileInstallReceiver) {
        this.f18093a = profileInstallReceiver;
    }

    @Override // l1.InterfaceC1210f
    public void onDiagnosticReceived(int i2, Object obj) {
        AbstractC1211g.f18095b.onDiagnosticReceived(i2, obj);
    }

    @Override // l1.InterfaceC1210f
    public void onResultReceived(int i2, Object obj) {
        AbstractC1211g.f18095b.onResultReceived(i2, obj);
        this.f18093a.setResultCode(i2);
    }
}
