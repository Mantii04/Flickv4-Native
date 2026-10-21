package androidx.media3.exoplayer;

import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.exoplayer.DefaultSuitableOutputChecker;
import androidx.media3.exoplayer.SuitableOutputChecker;

/* renamed from: androidx.media3.exoplayer.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0574d implements BackgroundThreadStateHandler.StateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7347b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SuitableOutputChecker.Callback f7348e;

    public /* synthetic */ C0574d(SuitableOutputChecker.Callback callback, int i2) {
        this.f7347b = i2;
        this.f7348e = callback;
    }

    @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
    public final void onStateChanged(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        Boolean bool2 = (Boolean) obj2;
        switch (this.f7347b) {
            case 0:
                DefaultSuitableOutputChecker.ImplApi23.lambda$enable$0(this.f7348e, bool, bool2);
                break;
            default:
                DefaultSuitableOutputChecker.ImplApi35.lambda$enable$0(this.f7348e, bool, bool2);
                break;
        }
    }
}
