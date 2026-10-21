package z;

import android.app.Notification;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class z extends C {

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f21392b;

    @Override // z.C
    public void addCompatExtras(Bundle bundle) {
        super.addCompatExtras(bundle);
    }

    @Override // z.C
    public void apply(InterfaceC1976w interfaceC1976w) {
        new Notification.BigTextStyle(((M) interfaceC1976w).getBuilder()).setBigContentTitle(null).bigText(this.f21392b);
    }

    public z bigText(CharSequence charSequence) {
        this.f21392b = C1954B.limitCharSequenceLength(charSequence);
        return this;
    }

    @Override // z.C
    public String getClassName() {
        return "androidx.core.app.NotificationCompat$BigTextStyle";
    }
}
