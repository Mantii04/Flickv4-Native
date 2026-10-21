package Z4;

import android.webkit.ValueCallback;
import org.apache.commons.lang3.StringEscapeUtils;

/* loaded from: classes2.dex */
public final class B implements ValueCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C f4520a;

    public B(C c7) {
        this.f4520a = c7;
    }

    @Override // android.webkit.ValueCallback
    public void onReceiveValue(String str) {
        D d7 = this.f4520a.f4521a;
        d7.getClass();
        if (str == null || str.length() < 100) {
            return;
        }
        try {
            String unescapeJava = StringEscapeUtils.unescapeJava(str);
            if (unescapeJava.contains("Just a moment...") || unescapeJava.contains("Checking if the site connection is secure") || unescapeJava.contains("Checking your browser before accessing") || !d7.f4527f) {
                return;
            }
            d7.e(unescapeJava, true);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
