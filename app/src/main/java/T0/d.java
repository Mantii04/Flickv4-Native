package T0;

import android.text.Layout;
import androidx.media3.common.text.Cue;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public static final J.c f3465c = new J.c(1);

    /* renamed from: a, reason: collision with root package name */
    public final Cue f3466a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3467b;

    public d(CharSequence charSequence, Layout.Alignment alignment, float f3, int i2, int i7, float f7, int i8, float f8, boolean z6, int i9, int i10) {
        Cue.Builder size = new Cue.Builder().setText(charSequence).setTextAlignment(alignment).setLine(f3, i2).setLineAnchor(i7).setPosition(f7).setPositionAnchor(i8).setSize(f8);
        if (z6) {
            size.setWindowColor(i9);
        }
        this.f3466a = size.build();
        this.f3467b = i10;
    }
}
