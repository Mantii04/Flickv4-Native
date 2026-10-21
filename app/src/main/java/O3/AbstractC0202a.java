package O3;

import android.app.Activity;
import android.content.Context;
import com.google.android.youtube.player.internal.w$a;

/* renamed from: O3.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0202a {

    /* renamed from: a, reason: collision with root package name */
    public static final AbstractC0202a f2405a;

    static {
        AbstractC0202a c0204c;
        try {
            try {
                c0204c = (AbstractC0202a) Class.forName("com.google.android.youtube.api.locallylinked.LocallyLinkedFactory").asSubclass(AbstractC0202a.class).newInstance();
            } catch (IllegalAccessException e3) {
                throw new IllegalStateException(e3);
            } catch (InstantiationException e7) {
                throw new IllegalStateException(e7);
            }
        } catch (ClassNotFoundException unused) {
            c0204c = new C0204c();
        }
        f2405a = c0204c;
    }

    public static AbstractC0202a a() {
        return f2405a;
    }

    public abstract InterfaceC0205d a(Context context, String str, A a7, B b7);

    public abstract InterfaceC0210i a(Activity activity, InterfaceC0205d interfaceC0205d, boolean z6) throws w$a;
}
