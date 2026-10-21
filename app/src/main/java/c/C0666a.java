package c;

import android.content.Context;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.jvm.internal.j;

/* renamed from: c.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0666a {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArraySet f8524a = new CopyOnWriteArraySet();

    /* renamed from: b, reason: collision with root package name */
    public volatile Context f8525b;

    public final void addOnContextAvailableListener(InterfaceC0667b listener) {
        j.checkNotNullParameter(listener, "listener");
        Context context = this.f8525b;
        if (context != null) {
            listener.onContextAvailable(context);
        }
        this.f8524a.add(listener);
    }

    public final void clearAvailableContext() {
        this.f8525b = null;
    }

    public final void dispatchOnContextAvailable(Context context) {
        j.checkNotNullParameter(context, "context");
        this.f8525b = context;
        Iterator it = this.f8524a.iterator();
        while (it.hasNext()) {
            ((InterfaceC0667b) it.next()).onContextAvailable(context);
        }
    }

    public final Context peekAvailableContext() {
        return this.f8525b;
    }

    public final void removeOnContextAvailableListener(InterfaceC0667b listener) {
        j.checkNotNullParameter(listener, "listener");
        this.f8524a.remove(listener);
    }
}
