package Z4;

import android.webkit.ValueCallback;
import org.apache.commons.lang3.StringEscapeUtils;

/* loaded from: classes2.dex */
public final class r implements ValueCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f4586a;

    public r(s sVar) {
        this.f4586a = sVar;
    }

    @Override // android.webkit.ValueCallback
    public void onReceiveValue(String str) {
        t tVar = this.f4586a.f4587a;
        tVar.getClass();
        if (str == null || str.length() < 100) {
            return;
        }
        try {
            String unescapeJava = StringEscapeUtils.unescapeJava(str);
            if (unescapeJava.contains("Checking if the site connection is secure") || unescapeJava.contains("Checking your browser before accessing")) {
                return;
            }
            if (tVar.f4596i) {
                tVar.e(unescapeJava, true);
            } else {
                tVar.f(unescapeJava, true);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
