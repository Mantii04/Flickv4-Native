package cz.msebera.android.httpclient.params;

import java.util.Set;

@Deprecated
/* loaded from: classes2.dex */
public abstract class AbstractHttpParams implements HttpParams, HttpParamsNames {
    @Override // cz.msebera.android.httpclient.params.HttpParams
    public boolean getBooleanParameter(String str, boolean z6) {
        Object parameter = getParameter(str);
        return parameter == null ? z6 : ((Boolean) parameter).booleanValue();
    }

    @Override // cz.msebera.android.httpclient.params.HttpParams
    public double getDoubleParameter(String str, double d7) {
        Object parameter = getParameter(str);
        return parameter == null ? d7 : ((Double) parameter).doubleValue();
    }

    @Override // cz.msebera.android.httpclient.params.HttpParams
    public int getIntParameter(String str, int i2) {
        Object parameter = getParameter(str);
        return parameter == null ? i2 : ((Integer) parameter).intValue();
    }

    @Override // cz.msebera.android.httpclient.params.HttpParams
    public long getLongParameter(String str, long j7) {
        Object parameter = getParameter(str);
        return parameter == null ? j7 : ((Long) parameter).longValue();
    }

    @Override // cz.msebera.android.httpclient.params.HttpParamsNames
    public Set<String> getNames() {
        throw new UnsupportedOperationException();
    }

    @Override // cz.msebera.android.httpclient.params.HttpParams
    public boolean isParameterFalse(String str) {
        return !getBooleanParameter(str, false);
    }

    @Override // cz.msebera.android.httpclient.params.HttpParams
    public boolean isParameterTrue(String str) {
        return getBooleanParameter(str, false);
    }

    @Override // cz.msebera.android.httpclient.params.HttpParams
    public HttpParams setBooleanParameter(String str, boolean z6) {
        setParameter(str, z6 ? Boolean.TRUE : Boolean.FALSE);
        return this;
    }

    @Override // cz.msebera.android.httpclient.params.HttpParams
    public HttpParams setDoubleParameter(String str, double d7) {
        setParameter(str, Double.valueOf(d7));
        return this;
    }

    @Override // cz.msebera.android.httpclient.params.HttpParams
    public HttpParams setIntParameter(String str, int i2) {
        setParameter(str, Integer.valueOf(i2));
        return this;
    }

    @Override // cz.msebera.android.httpclient.params.HttpParams
    public HttpParams setLongParameter(String str, long j7) {
        setParameter(str, Long.valueOf(j7));
        return this;
    }
}
