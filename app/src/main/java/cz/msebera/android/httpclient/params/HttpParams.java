package cz.msebera.android.httpclient.params;

@Deprecated
/* loaded from: classes2.dex */
public interface HttpParams {
    HttpParams copy();

    boolean getBooleanParameter(String str, boolean z6);

    double getDoubleParameter(String str, double d7);

    int getIntParameter(String str, int i2);

    long getLongParameter(String str, long j7);

    Object getParameter(String str);

    boolean isParameterFalse(String str);

    boolean isParameterTrue(String str);

    boolean removeParameter(String str);

    HttpParams setBooleanParameter(String str, boolean z6);

    HttpParams setDoubleParameter(String str, double d7);

    HttpParams setIntParameter(String str, int i2);

    HttpParams setLongParameter(String str, long j7);

    HttpParams setParameter(String str, Object obj);
}
