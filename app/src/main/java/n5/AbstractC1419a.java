package n5;

import A.i;
import android.content.Context;

/* renamed from: n5.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1419a {
    public static void reportOptIn(Context context, String str, String str2, String str3) {
        new Thread(new Y2.a(context.getApplicationContext(), i.B(str, "/optin"), str3, str2, 3)).start();
    }

    public static void reportOptOut(Context context, String str, String str2, String str3) {
        new Thread(new Y2.a(context.getApplicationContext(), i.B(str, "/optout"), str3, str2, 3)).start();
    }
}
