package a5;

import flix.com.vision.api.realdebrid.RealDebridCommon;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class r extends h2.t {
    @Override // com.android.volley.Request
    public Map<String, String> getHeaders() {
        return b.c.p("authorization", RealDebridCommon.f15826f + StringUtils.SPACE + RealDebridCommon.f15824b);
    }
}
