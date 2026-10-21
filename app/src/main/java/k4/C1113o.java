package k4;

import android.view.MotionEvent;
import android.view.View;

/* renamed from: k4.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1113o implements InterfaceC1105g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ H5.p f17312a;

    public C1113o(H5.p pVar) {
        this.f17312a = pVar;
    }

    public final void onSpinnerOutsideTouch(View view, MotionEvent event) {
        kotlin.jvm.internal.j.checkNotNullParameter(view, "view");
        kotlin.jvm.internal.j.checkNotNullParameter(event, "event");
        this.f17312a.invoke(view, event);
    }
}
