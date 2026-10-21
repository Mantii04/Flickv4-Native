package n4;

import A.h;
import android.content.Context;
import android.os.Bundle;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19010a;

    /* renamed from: b, reason: collision with root package name */
    public final Bundle f19011b = new Bundle();

    /* renamed from: c, reason: collision with root package name */
    public d f19012c;

    public c(Context context) {
        this.f19010a = context;
    }

    public com.thebluealliance.spectrum.a build() {
        com.thebluealliance.spectrum.a aVar = new com.thebluealliance.spectrum.a();
        aVar.setArguments(this.f19011b);
        aVar.setOnColorSelectedListener(this.f19012c);
        return aVar;
    }

    public c setColors(int i2) {
        this.f19011b.putIntArray("colors", this.f19010a.getResources().getIntArray(i2));
        return this;
    }

    public c setDismissOnColorSelected(boolean z6) {
        this.f19011b.putBoolean("should_dismiss_on_color_selected", z6);
        return this;
    }

    public c setOnColorSelectedListener(d dVar) {
        this.f19012c = dVar;
        return this;
    }

    public c setOutlineWidth(int i2) {
        this.f19011b.putInt("border_width", i2);
        return this;
    }

    public c setSelectedColorRes(int i2) {
        int color = h.getColor(this.f19010a, i2);
        Bundle bundle = this.f19011b;
        bundle.putInt("selected_color", color);
        bundle.putInt("origina_selected_color", color);
        return this;
    }

    public c setTitle(int i2) {
        this.f19011b.putCharSequence("title", this.f19010a.getText(i2));
        return this;
    }
}
