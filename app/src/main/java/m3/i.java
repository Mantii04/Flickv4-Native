package m3;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;

/* loaded from: classes2.dex */
public final class i implements InterfaceC1318a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialButtonToggleGroup f18587a;

    public i(MaterialButtonToggleGroup materialButtonToggleGroup) {
        this.f18587a = materialButtonToggleGroup;
    }

    public void onPressedChanged(MaterialButton materialButton, boolean z6) {
        this.f18587a.invalidate();
    }
}
