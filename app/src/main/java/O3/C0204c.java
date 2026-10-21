package O3;

import android.app.Activity;
import android.content.Context;
import com.google.android.youtube.player.internal.w$a;

/* renamed from: O3.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0204c extends AbstractC0202a {
    @Override // O3.AbstractC0202a
    public final InterfaceC0205d a(Context context, String str, A a7, B b7) {
        return new r(context, str, context.getPackageName(), J.d(context), a7, b7);
    }

    @Override // O3.AbstractC0202a
    public final InterfaceC0210i a(Activity activity, InterfaceC0205d interfaceC0205d, boolean z6) throws w$a {
        return G.a(activity, ((r) interfaceC0205d).a(), z6);
    }
}
