package q3;

import C3.i;
import android.graphics.Typeface;
import com.google.android.material.chip.Chip;

/* renamed from: q3.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1518b extends i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Chip f19580a;

    public C1518b(Chip chip) {
        this.f19580a = chip;
    }

    @Override // C3.i
    public void onFontRetrieved(Typeface typeface, boolean z6) {
        Chip chip = this.f19580a;
        C1522f c1522f = chip.f12566m;
        chip.setText(c1522f.f19605N0 ? c1522f.getText() : chip.getText());
        chip.requestLayout();
        chip.invalidate();
    }

    @Override // C3.i
    public void onFontRetrievalFailed(int i2) {
    }
}
