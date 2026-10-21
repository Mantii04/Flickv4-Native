package z;

import android.os.Bundle;
import android.widget.RemoteViews;

/* loaded from: classes.dex */
public abstract class C {

    /* renamed from: a, reason: collision with root package name */
    public C1954B f21347a;

    public void addCompatExtras(Bundle bundle) {
        String className = getClassName();
        if (className != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", className);
        }
    }

    public abstract void apply(InterfaceC1976w interfaceC1976w);

    public String getClassName() {
        return null;
    }

    public RemoteViews makeBigContentView(InterfaceC1976w interfaceC1976w) {
        return null;
    }

    public RemoteViews makeContentView(InterfaceC1976w interfaceC1976w) {
        return null;
    }

    public RemoteViews makeHeadsUpContentView(InterfaceC1976w interfaceC1976w) {
        return null;
    }

    public void setBuilder(C1954B c1954b) {
        if (this.f21347a != c1954b) {
            this.f21347a = c1954b;
            if (c1954b != null) {
                c1954b.setStyle(this);
            }
        }
    }
}
