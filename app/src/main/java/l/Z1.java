package l;

import androidx.appcompat.widget.SwitchCompat;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class Z1 extends androidx.emoji2.text.l {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f17826a;

    public Z1(SwitchCompat switchCompat) {
        this.f17826a = new WeakReference(switchCompat);
    }

    @Override // androidx.emoji2.text.l
    public void onFailed(Throwable th) {
        SwitchCompat switchCompat = (SwitchCompat) this.f17826a.get();
        if (switchCompat != null) {
            switchCompat.c();
        }
    }

    @Override // androidx.emoji2.text.l
    public void onInitialized() {
        SwitchCompat switchCompat = (SwitchCompat) this.f17826a.get();
        if (switchCompat != null) {
            switchCompat.c();
        }
    }
}
