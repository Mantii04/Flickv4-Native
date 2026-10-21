package y4;

import com.android.volley.AuthFailureError;
import java.util.Map;

/* loaded from: classes2.dex */
public final class p1 extends h2.p {
    @Override // com.android.volley.Request
    public Map<String, String> getHeaders() throws AuthFailureError {
        return b.c.p("Content-Type", "application/json");
    }
}
