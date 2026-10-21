package l;

import android.view.View;
import j.AbstractC1020c;

/* renamed from: l.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC1142f implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC1020c f17886b;

    public ViewOnClickListenerC1142f(AbstractC1020c abstractC1020c) {
        this.f17886b = abstractC1020c;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f17886b.finish();
    }
}
