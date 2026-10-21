package q3;

import android.annotation.TargetApi;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.chip.Chip;

/* renamed from: q3.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1519c extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Chip f19581a;

    public C1519c(Chip chip) {
        this.f19581a = chip;
    }

    @Override // android.view.ViewOutlineProvider
    @TargetApi(21)
    public void getOutline(View view, Outline outline) {
        C1522f c1522f = this.f19581a.f12566m;
        if (c1522f != null) {
            c1522f.getOutline(outline);
        } else {
            outline.setAlpha(0.0f);
        }
    }
}
