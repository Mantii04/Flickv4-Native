package androidx.activity;

import android.view.View;

/* loaded from: classes.dex */
public abstract class z {
    public static final void set(View view, InterfaceC0404r fullyDrawnReporterOwner) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "<this>");
        kotlin.jvm.internal.j.checkNotNullParameter(fullyDrawnReporterOwner, "fullyDrawnReporterOwner");
        view.setTag(R.id.report_drawn, fullyDrawnReporterOwner);
    }
}
