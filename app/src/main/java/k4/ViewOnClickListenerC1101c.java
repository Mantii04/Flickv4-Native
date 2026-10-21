package k4;

import android.view.View;

/* renamed from: k4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewOnClickListenerC1101c implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1100b f17299b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1102d f17300e;

    public ViewOnClickListenerC1101c(C1100b c1100b, C1102d c1102d) {
        this.f17299b = c1100b;
        this.f17300e = c1102d;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Integer valueOf = Integer.valueOf(this.f17299b.getBindingAdapterPosition());
        if (valueOf.intValue() == -1) {
            valueOf = null;
        }
        if (valueOf != null) {
            this.f17300e.notifyItemSelected(valueOf.intValue());
        }
    }
}
