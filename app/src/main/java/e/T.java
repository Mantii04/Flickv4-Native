package e;

import android.content.Context;
import android.content.IntentFilter;
import android.os.PowerManager;

/* loaded from: classes.dex */
public final class T extends V {

    /* renamed from: c, reason: collision with root package name */
    public final PowerManager f13661c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a0 f13662d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T(a0 a0Var, Context context) {
        super(a0Var);
        this.f13662d = a0Var;
        this.f13661c = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    @Override // e.V
    public final IntentFilter b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
        return intentFilter;
    }

    @Override // e.V
    public int getApplyableNightMode() {
        return this.f13661c.isPowerSaveMode() ? 2 : 1;
    }

    @Override // e.V
    public void onChange() {
        this.f13662d.applyDayNight();
    }
}
