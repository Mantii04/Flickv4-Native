package Z4;

import android.webkit.ValueCallback;
import org.apache.commons.lang3.StringEscapeUtils;

/* loaded from: classes2.dex */
public final class h implements ValueCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f4552a;

    public h(i iVar) {
        this.f4552a = iVar;
    }

    @Override // android.webkit.ValueCallback
    public void onReceiveValue(String str) {
        j jVar = this.f4552a.f4553a;
        jVar.getClass();
        if (str == null || str.length() < 100) {
            return;
        }
        try {
            String unescapeJava = StringEscapeUtils.unescapeJava(str);
            if (unescapeJava.contains("Just a moment...") || unescapeJava.contains("Checking if the site connection is secure") || unescapeJava.contains("Checking your browser before accessing")) {
                return;
            }
            if (jVar.f4562i) {
                jVar.e(unescapeJava, true);
            } else {
                jVar.f(unescapeJava, true);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
